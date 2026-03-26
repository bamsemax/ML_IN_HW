FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY server.py .
COPY prometheus.yml .

EXPOSE 8080
CMD ["python", "server.py"]

