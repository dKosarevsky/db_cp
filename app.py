import streamlit as st
import psycopg2


# st.set_page_config(initial_sidebar_state="collapsed")


def header():
    author = """
        made by [Kosarevsky Dmitry](https://github.com/dKosarevsky) 
        for [DB](https://github.com/dKosarevsky/iu7/blob/master/7sem/db.md) course project
        in [BMSTU](https://bmstu.ru)
    """
    st.markdown("# МГТУ им. Баумана. Кафедра ИУ7")
    st.markdown("## Базы данных")
    st.markdown("**Преподаватель:** Павлюк А.А.")
    st.markdown("**Студент:** Косаревский Д.П.")
    st.sidebar.image('logo.png', width=300)
    st.sidebar.markdown(author)


# Initialize connection.
# Uses st.cache to only run once.
# @st.cache(hash_funcs={builtins.weakref: my_hash_func})
# @st.cache(allow_output_mutation=True, hash_funcs={"_thread.RLock": lambda _: None})
@st.cache(allow_output_mutation=True)
def init_connection():
    return psycopg2.connect(**st.secrets["postgres"])


# Perform query.
# Uses st.cache to only rerun when the query changes or after 10 min.
@st.cache(ttl=600)
def run_query(conn, query):
    with conn.cursor() as cur:
        cur.execute(query)
        return cur.fetchall()


def main():
    header()

    conn = init_connection()

    rows = run_query(conn, "SELECT * from information_schema.sql_sizing;")

    # Print results.
    for row in rows:
        st.write(f"{row[0]} has a :{row[1]}:")


if __name__ == "__main__":
    main()
