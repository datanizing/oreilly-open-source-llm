#!/bin/sh
 
git clone https://github.com/ggerganov/llama.cpp && cd llama.cpp

# create environment first!
pip install -r requirements.txt
huggingface-cli download meta-llama/Llama-3.1-8B-Instruct

python convert_hf_to_gguf.py ~/.cache/huggingface/hub/models--meta-llama--Llama-3.1-8B-Instruct/snapshots/0e9e39f249a16976918f6564b8830bc894c89659/ --outfile ../models/Meta-Llama-3.1-8B.gguf
./llama-quantize ../models/Meta-Llama-3.1-8B.gguf ../models/Meta-Llama-3.1-8B.q4_k_m.gguf q4_k_m
./llama-server -t 16 -m ../models/Meta-Llama-3.1-8B-Instruct-Q4_K_M.gguf 
