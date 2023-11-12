from huggingface_hub import snapshot_download
import os

snapshot_download(
    repo_id=os.getenv('repo_id'),
    local_dir_use_symlinks=False,
    local_dir="./models")