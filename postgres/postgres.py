import streamlit as st
import psycopg2
import pandas as pd


# Initialize connection.
# Uses st.cache to only run once.
# @st.cache(allow_output_mutation=True, hash_funcs={"_thread.RLock": lambda _: None})
def init_connection():
    return psycopg2.connect(**st.secrets["postgres"])


def get_sql_query(filename):
    f = open(f"queries/{filename}", encoding="utf-8", mode="r")
    query = f.read()
    f.close()
    return query


def main():
    st.image("postgres/logo.png", width=300)

    show_schema = st.checkbox("Показать диаграмму")
    if show_schema:
        st.image("postgres/pg_schema.png")

    conn = init_connection()

    display = (
        "Покупатели и их покупки",
        "Суммы покупок покупателей",
        "Сумма всех покупок за выбранный месяц",
        "Суммы покупок по месяцам",
        "Кумулятивная сумма",
        "Топ 20 продаж по регионам",
        "День недели с максимальными продажами",
        "Поиск покупателя",
        "Средняя зарплата",
        "Средняя зарплата с фильтром",
        "Возраст сотрудников",
        "Возраст сотрудников с фильтром",
    )
    options = list(range(len(display)))
    select = st.selectbox("Выберите запрос:", options, format_func=lambda x: display[x])
    query = None

    if select == 0:
        query = get_sql_query("customers_purchases.sql")
        users_purchases = pd.read_sql(query, conn)
        st.write(users_purchases)

    elif select == 1:
        query = get_sql_query("customers_sums.sql")
        customers_sums = pd.read_sql(query, conn)
        st.write(customers_sums)

    elif select == 2:
        month = int(st.slider("Выберите месяц:", min_value=1, max_value=12, value=1, step=1))
        query = get_sql_query("sum_by_month.sql").format(month=month)
        sum_by_month = pd.read_sql(query, conn)
        st.write(sum_by_month)

    elif select == 3:
        query = get_sql_query("sums_by_months.sql")
        sums_by_months = pd.read_sql(query, conn)
        st.write(sums_by_months)

    elif select == 4:
        query = get_sql_query("cum_sum.sql")
        cum_sum = pd.read_sql(query, conn)
        st.write(cum_sum)

    elif select == 5:
        query = get_sql_query("top_regional_sales.sql")
        top_regional_sales = pd.read_sql(query, conn)
        st.write(top_regional_sales)

    elif select == 6:
        query = get_sql_query("pop_day.sql")
        pop_day = pd.read_sql(query, conn)
        st.write(pop_day)

    elif select == 7:
        c1, c2 = st.columns(2)
        name = st.text_input("Введите имя или часть имени:", value="james", max_chars=100)
        age_from = c1.number_input("Введите возраст (от):", min_value=1, max_value=120, value=18, step=1)
        age_to = c2.number_input("Введите возраст (до):", min_value=1, max_value=120, value=60, step=1)
        query = get_sql_query("find_customer.sql").format(name=name, age_from=age_from, age_to=age_to)
        customer = pd.read_sql(query, conn)
        st.write(customer)

    elif select == 8:
        query = get_sql_query("avg_salary.sql")
        avg_salary = pd.read_sql(query, conn)
        st.write(avg_salary)

    elif select == 9:
        salary = st.number_input("Введите нижнюю границу ЗП:", value=240000, step=1000)
        query = get_sql_query("avg_salary_filter.sql").format(salary=salary)
        avg_salary_filter = pd.read_sql(query, conn)
        st.write(avg_salary_filter)

    elif select == 10:
        query = get_sql_query("age_count.sql")
        age_count = pd.read_sql(query, conn)
        st.write(age_count)

    elif select == 11:
        c1, c2 = st.columns(2)
        age_from = c1.number_input("Введите возраст (от):", min_value=1, max_value=120, value=1, step=1)
        age_to = c2.number_input("Введите возраст (до):", min_value=1, max_value=120, value=5, step=1)
        query = get_sql_query("age_count_filter.sql").format(from=age_from, to=age_to)
        age_count_filter = pd.read_sql(query, conn)
        st.write(age_count_filter)

    elif select == 12:
        query = st.text_input("Введите произвольный запрос:", value="select * from db_cp.transactions limit 10")
        avg_salary_filter = pd.read_sql(query, conn)
        st.write(avg_salary_filter)

    show_query = st.checkbox("Показать SQL-запрос")
    if show_query:
        st.code(query)

    st.markdown("---")
    st.markdown("Данные сгенерированы с помощью [generatedata](https://generatedata.com/) и SQL-функций")
    show_funcs = st.checkbox("Показать использованные SQL-функции")
    if show_funcs:
        st.code(get_sql_query("random.sql"))

    show_init = st.checkbox("Показать SQL-запросы инициализации БД")
    if show_init:
        st.code(get_sql_query("init.sql"))


if __name__ == "__main__":
    main()
