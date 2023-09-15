from llama_index import VectorStoreIndex, SimpleDirectoryReader

documents = SimpleDirectoryReader('./test').load_data()
index = VectorStoreIndex.from_documents(documents)
query_engine = index.as_query_engine()
response = query_engine.query("List all the poisons")
print(response)
