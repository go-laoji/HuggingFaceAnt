FROM python:3.9.18-alpine3.18
WORKDIR /app
COPY main.py ./
VOLUME [ "/data" ]
ENV repo_id=sentence-transformers/clip-ViT-B-32-multilingual-v1
RUN pip install huggingface_hub && python main.py
CMD [ "cp","-r","models","/data" ]
