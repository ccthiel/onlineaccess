from llama_index import VectorStoreIndex, SimpleDirectoryReader

from llama_index import VectorStoreIndex, ServiceContext, set_global_service_context
from llama_index.llms import OpenAI

# define LLM
llm = OpenAI(model="gpt-4-0613", temperature=0)

# configure service context
service_context = ServiceContext.from_defaults(llm=llm)
set_global_service_context(service_context)


documents = SimpleDirectoryReader(input_dir='./test', recursive=True).load_data()
print(f"loaded {len(documents)} documents for storing")

index = VectorStoreIndex.from_documents(documents)
index.storage_context.persist(persist_dir=".")
