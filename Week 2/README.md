# Course material for week 2

## Quantization

Download [llama.cpp](https://github.com/ggerganov/llama.cpp) and compile it. Install the necessary Python packages (recommend a `venv`).

Download e.g. [Mistral](https://mistral.ai/news/announcing-mistral-7b/) and unpack.

Convert the model:
```bash
python3 convert.py ../Mistral-7B-Instruct-v0.1/
``` 

Quantize the model:
```bash
./quantize ../Mistral-7B-Instruct-v0.1/ggml-model-f16.gguf ../Mistral-7B-Instruct-v0.1/ggml-model-q4_0.gguf q4_0
```

Run the model:
```bash
./main -m ../Mistral-7B-Instruct-v0.1/ggml-model-q4_0.gguf -t 16 -n 256 --repeat_penalty 1.0 -f prompts/chat-with-bob.txt --color -i -r "User:"
```
