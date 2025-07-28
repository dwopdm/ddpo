export HF_ENDPOINT=https://hf-mirror.com
#pip install swanlab -i https://mirrors.cernet.edu.cn/pypi/web/simple
#export SWANLAB_API_KEY=6awu50XROMO4IE4D5UMZQ
#export WANDB_MODE=offline
export WANDB_API_KEY=96faae090370c105f602c5f18e71020acfff8815
#export WANDB_API_KEY="222fd475e79a5520c02afe56255a7b614ed0a46b"
cd /root/alignment-handbook/
ACCELERATE_LOG_LEVEL=info accelerate launch --config_file recipes/accelerate_configs/fsdp.yaml scripts/dpo.py --config recipes/zephyr-7b-beta/dpo/config_full.yaml
