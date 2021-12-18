import streamlit as st
import pymongo


# Pull data from the collection.
# Uses st.cache to only rerun when the query changes or after 10 min.
# @st.cache(ttl=600)
def get_data(client):
    db = client.sample_analytics
    items = db.customers.find()
    items = list(items)  # make hashable for st.cache
    return items


def main():
    st.subheader("Mongo")

    # Initialize connection.
    client = pymongo.MongoClient(**st.secrets["mongo"])

    # test_db = client.db.test
    # st.write(test_db)
    # test_collection = test_db.test_collection
    # st.write(test_collection)
    # st.write(test_collection.find_one())

    db = client.sample_analytics
    st.write(db.customers.find_one())

    # items = get_data(client)

    # Print results.
    # for item in items:
    #     st.write(item)
        # st.write(f"{item['name']} has a :{item['pet']}:")


if __name__ == "__main__":
    main()
