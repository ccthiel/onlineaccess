from pathlib import Path
from llama_index import ListIndex, SimpleDirectoryReader, ServiceContext, set_global_service_context, download_loader
from llama_index.llms import OpenAI

# define LLM
llm = OpenAI(model="gpt-4-0613", temperature=0)

# configure service context
service_context = ServiceContext.from_defaults(llm=llm)
set_global_service_context(service_context)

# JSON Reader
JSONReader = download_loader("JSONReader")

loader = JSONReader()
documents = loader.load_data(Path("./test/poisons.json"))
print(f"loaded {len(documents)} documents for storing")

index = ListIndex.from_documents(documents)
index.storage_context.persist(persist_dir=".")
