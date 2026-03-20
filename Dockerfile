FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install "huggingface_hub<0.20"
COPY . .
EXPOSE 7860
CMD ["python", "app.py"]
