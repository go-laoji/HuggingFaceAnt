FROM python:3.9.18-alpine3.18
WORKDIR /app
COPY main.py ./
VOLUME [ "/data" ]
ENV repo_id=bert-base-chinese
RUN pip --no-cache-dir install huggingface_hub && python main.py
CMD [ "cp","-r","models/*","/data" ]
