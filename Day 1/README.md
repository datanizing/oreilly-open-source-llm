# Day 1 for LLM Bootcamp

## Presentation
The [slides](<2025-11-19-LLM-3-1.pdf>) contain additional
background and theroretical information.

## Notebooks

You can either try to run the notebooks directly
or try to follow how I run them and use it as a 
documentation (or run it later).


### BERT basics and classification
* [10-prepare-data.ipynb](10-prepare-data.ipynb): In this notebook, we prepare the dataset, split the sentences and save the results.

### Similarity and embeddings
[11-similarity-embeddings.ipynb](11-similarity-embeddings.ipynb): This notebook creates several embeddings and saves them in `numpy` format. It introduces the search function.
[12-similarity-vectordb.ipynb](12-similarity-vectordb.ipynb): This notebook uses a vector database (usearch) for better scalability.
[12-similarity-vectordb-milvus.ipynb](12-similarity-vectordb-milvus.ipynb): Alternative approach with the more popular, but slower Milvus vector database.

### Improving similarity with lexical matching, rank fusion and cross encoders
[21-similarity-tantivy.ipynb](21-similarity-tantivy.ipynb): This notebook introduces lexical search as an alternative retrieval method.
[22-similarity-rrf.ipynb](22-similarity-rrf.ipynb): In this notebook, we implement the "reciprocal rank fusion" algorithm to combine semantic and lexical result lists.
[23-similarity-cross-encoder.ipynb](23-similarity-cross-encoder.ipynb): This notebook uses a cross encoder to get a more sophisticated score for the documents and combine result lists.

### Using third party software
[31-similarity-langchain.ipynb](31-similarity-langchain.ipynb): Use `langchain` as a framework to perform retrieval
[32-txtai.ipynb](32-txtai.ipynb): Use `txtai` as a framework to perform retrieval
