#!/bin/sh

git clone https://github.com/Coyote-A/ultimate-upscale-for-automatic1111.git ~/stable-diffusion-webui-docker/data/extensions/ultimate-upscale.py
git clone https://github.com/adieyal/sd-dynamic-prompting/ ~/stable-diffusion-webui-docker/data/extensions/dynamic-prompts
wget https://raw.githubusercontent.com/camenduru/stable-diffusion-webui-scripts/main/run_n_times.py -O scripts/run_n_times.py
git clone https://github.com/deforum-art/deforum-for-automatic1111-webui ~/stable-diffusion-webui-docker/data/extensions/deforum-for-automatic1111-webui
git clone https://github.com/AlUlkesh/stable-diffusion-webui-images-browser ~/stable-diffusion-webui-docker/data/extensions/stable-diffusion-webui-images-browser
git clone https://github.com/camenduru/stable-diffusion-webui-huggingface ~/stable-diffusion-webui-docker/data/extensions/stable-diffusion-webui-huggingface
git clone -b v2.0 https://github.com/camenduru/sd-civitai-browser ~/stable-diffusion-webui-docker/data/extensions/sd-civitai-browser
git clone https://github.com/kohya-ss/sd-webui-additional-networks ~/stable-diffusion-webui-docker/data/extensions/sd-webui-additional-networks
git clone https://github.com/Mikubill/sd-webui-controlnet ~/stable-diffusion-webui-docker/data/extensions/sd-webui-controlnet
git clone https://github.com/camenduru/openpose-editor ~/stable-diffusion-webui-docker/data/extensions/openpose-editor
git clone https://github.com/jexom/sd-webui-depth-lib ~/stable-diffusion-webui-docker/data/extensions/sd-webui-depth-lib
git clone https://github.com/hnmr293/posex ~/stable-diffusion-webui-docker/data/extensions/posex
git clone https://github.com/camenduru/sd-webui-tunnels ~/stable-diffusion-webui-docker/data/extensions/sd-webui-tunnels
git clone https://github.com/etherealxx/batchlinks-webui ~/stable-diffusion-webui-docker/data/extensions/batchlinks-webui
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui-aesthetic-gradients ~/stable-diffusion-webui-docker/data/extensions/aesthetic-gradients


wget https://civitai.com/api/download/models/15927 -O ~/stable-diffusion-webui-docker/data/embeddings/nrealfixer.pt
wget https://civitai.com/api/download/models/15926 -O ~/stable-diffusion-webui-docker/data/embeddings/nartfixer.pt
wget https://civitai.com/api/download/models/15921 -O ~/stable-diffusion-webui-docker/data/embeddings/nfixer.pt
wget https://mega.nz/folder/qZRBmaIY#nIG8KyWFcGNTuMX_XNbJ_g/file/vRYVhaDA -O ~/stable-diffusion-webui-docker/data/models/ESRGAN/4x-UltraSharp.pth
wget https://civitai.com/api/download/models/21216?type=VAE&format=Other -O ~/stable-diffusion-webui-docker/data/models/VAE/vae-ft-mse-840000-ema-pruned.vae.pt
                                       