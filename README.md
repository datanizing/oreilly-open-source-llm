# O'Reilly Live Course: Open Source Large Language Models Bootcamp

Repository for the course with all material. The course is organized
in two days, notebooks and presentations can be found in the
respective folders.

## Python setup

### uv
If possible, work with [uv](https://astral.sh/uv/). Clone the repository and run `uv sync`.

### anaconda or pip

Create an venv or conda environment and install the following packages:

* accelerate
* autoawq
* bitsandbytes
* device-smi
* exllamav2
* flash-attn
* flashinfer-python
* ipykernel
* ipython
* ipywidgets
* jupyter
* langchain
* langchain-community
* langchain-huggingface
* logbar
* nvidia-ml-py
* openai
* optimum
* pandas
* pip
* pymilvus
* sentence-transformers
* spacy
* tantivy
* tokenicer
* tqdm
* transformers
* txtai
* usearch
* vllm

`flash-attn` should be installed with the option `--no-build-isolation`.

Of course, you can also Use the supplied `requirements.txt`, but some dependencies might be outdated.

## runpod

You can also use runpod. `uv` is already preinstalled there.

## Notebooks

You can either try to run the notebooks directly
or try to follow how I run them and use it as a
documentation (or run it later).

