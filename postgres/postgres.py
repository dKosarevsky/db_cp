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
    st.subheader("Postgres")

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

    show_query = st.checkbox("Показать SQL-запрос")
    if show_query:
        st.code(query)


if __name__ == "__main__":
    main()
