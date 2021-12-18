import streamlit as st
from mongo import mongo
from postgres import postgres

# st.set_page_config(initial_sidebar_state="collapsed")


def header():
    author = """
        made by [Kosarevsky Dmitry](https://github.com/dKosarevsky) 
        for [DB](https://github.com/dKosarevsky/iu7/blob/master/7sem/db.md) course project
        in [BMSTU](https://bmstu.ru)
    """
    st.header("МГТУ им. Баумана. Кафедра ИУ7")
    st.markdown("**Курс:** Базы данных")
    st.markdown("**Преподаватель:** Павлюк А.А.")
    st.markdown("**Студент:** Косаревский Д.П.")
    st.sidebar.image('logo.png', width=300)
    st.sidebar.markdown(author)

    st.markdown("Данные сгенерированы с помощью генератора данных [generatedata](https://generatedata.com/)")


def main():
    header()

    db = st.sidebar.radio(
        "Выберите тип БД:", (
            "1. Postgres.",
            "2. Mongo.",
        ),
        index=0
    )

    if db[:1] == "1":
        postgres.main()

    elif db[:1] == "2":
        mongo.main()


if __name__ == "__main__":
    main()
