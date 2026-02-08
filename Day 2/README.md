# Day 2 for LLM Bootcamp

On day 2, we will concentrate on *decoder models*, also
called GPT-like models. These models can be used for
completing text, or answering questions (in the style
of ChatGPT). As this use case is much more popular,
we will focus on this.

## Presentation
The [slides](<2025-11-19-LLM-3-1.pdf>) contain additional
background and theroretical information.

## Notebooks

You can either try to run the notebooks directly
or try to follow how I run them and use it as a 
documentation (or run it later).


### Text generation using `transformers`
[11a-qwen-8b.ipynb](11a-qwen-8b.ipynb): Naively run Qwen-8B and fail.
[11b-qwen-8b.ipynb](11b-qwen-8b.ipynb): Run Qwen-8B with the correct data type, generate text and see how the model behaves when sampling is switched off. 
[12-qwen-7b-gptq.ipynb](12-qwen-7b-gptq.ipynb): Formely, you could run GPTQ models with transformers or at least use the Hugging Face infrastructure. This is not useful anymore.
[13-qwen-8b-awq.ipynb](13-qwen-8b-awq.ipynb): AWQ quantization was integrated into Hugging Face transformers, but this has been discontinued.
[14-qwen-8b-exl2.ipynb](14-qwen-8b-exl2.ipynb): exl2 is both a quantization method and a execution framework with dedicated kernels. It is very fast.
[15-qwen-8b-stream-exl2.ipynb](15-qwen-8b-stream-exl2.ipynb): This contains the streaming version of exl2 text generation.

### Text generation using separate software
[21-tgi.ipynb](21-tgi.ipynb): TGI is a server software from Hugging Face for LLMs. vllm however is more popular and now also more powerful.
[22-vllm-direct.ipynb](22-vllm-direct.ipynb): vllm can be used as a library or as a server. This notebook contains the librar code.
[23-vllm-api.ipynb](23-vllm-api.ipynb): This notebook uses the API of vllm which is compatible to the OpenAI API.

## Running LLMs on the CPU

For this, a good starting point is [LM Studio](https://lmstudio.ai/) which is available for all major platforms. However, it is not Open Source Software.

An alternative (but also not completely open) is [ollama](https://ollama.com/).

If you want to run free software, [llama.cpp](https://github.com/ggml-org/llama.cpp) is recommended. It is a very active project with multiple releases per day and supports many current models. `llama.cpp` can also run as server and is compatible to the OpenAI API.

### Creating your own GGUFs

The easiest way is to download GGUFs, which are widely available on [Hugging Face](https://huggingface.co).

If a GGUF is not available, you can also [create it there](https://huggingface.co/spaces/ggml-org/gguf-my-repo).

Using llama.cpp, you can convert Hugging Face repositories (download first via `huggingface-cli download --local-dir Qwen-8B Qwen/Qwen3-8B`) to GGUF:

```bash
python convert_hf_to_gguf.py --outfile Qwen3-8B.gguf Qwen3-8B
```

Afterwards, you can quantize them:

```bash
$ build/bin/llama-quantize Qwen3-8B.gguf Qwen3-8B-Q4_K_M.gguf q4_k_m
```

Finally, run a `llama-server` to access the frontend:

```bash
$ build/bin/llama-server -m Qwen3-8B-Q4_K_M.gguf --port 8080
```

## Trying models without local hardware

On [Hugging Face](https://huggingface.co), some models
are available for inference.

You can also try [OpenRouter](https://openrouter.ai/models),
some of the models are free, for some you have to pay (very
little). Many new models are available there.
