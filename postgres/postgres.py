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

    conn = init_connection()
    st.write(conn)

    users_purchases = pd.read_sql(get_sql_query("customers_purchases.sql"), conn)
    st.write(users_purchases)

    customers_sums = pd.read_sql(get_sql_query("customers_sums.sql"), conn)
    st.write(customers_sums)

    month = st.selectbox("Выберите месяц:", min_value=1, max_value=12, value=8)
    sum_by_month_query = get_sql_query("sum_by_month.sql").format(month=month)
    sum_by_month = pd.read_sql(sum_by_month_query, conn)
    st.write(sum_by_month)


if __name__ == "__main__":
    main()
