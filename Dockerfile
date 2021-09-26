
FROM python:3.7-slim

COPY requirements/requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8888

WORKDIR building-ml-pipelines

CMD ["jupyter", "notebook", "--port=8888", "--allow-root", "--ip=0.0.0.0"]

