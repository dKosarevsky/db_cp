import streamlit as st
import psycopg2


# Initialize connection.
# Uses st.cache to only run once.
# @st.cache(allow_output_mutation=True, hash_funcs={"_thread.RLock": lambda _: None})
def init_connection():
    return psycopg2.connect(**st.secrets["postgres"])


# Perform query.
# Uses st.cache to only rerun when the query changes or after 10 min.
# @st.cache(ttl=600)
def run_query(conn, query):
    with conn.cursor() as cur:
        cur.execute(query)
        return cur.fetchall()


def main():
    st.subheader("Postgres")

    conn = init_connection()
    st.write(conn)
    rows = run_query(conn, "SELECT * from information_schema.sql_sizing;")

    # Print results.
    for row in rows:
        st.write(f"{row[0]} has a :{row[1]}:")


if __name__ == "__main__":
    main()
