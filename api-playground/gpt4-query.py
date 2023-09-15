from llama_index import ListIndex, StorageContext, ServiceContext, set_global_service_context, load_index_from_storage
from llama_index.llms import OpenAI

# define LLM
llm = OpenAI(model="gpt-4-0613", temperature=0)

# configure service context
service_context = ServiceContext.from_defaults(llm=llm)
set_global_service_context(service_context)

methods = [method for method in vars(ListIndex) if callable(getattr(ListIndex, method))]
print(methods)

storage_context = StorageContext.from_defaults(persist_dir=".")

index = load_index_from_storage(storage_context)

query_engine = index.as_query_engine()
response = query_engine.query("give me a list of all poisons")
print(type(response))
