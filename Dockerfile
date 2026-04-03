# Gunakan versi Python Slim (Hanya berisi mesin utama, tidak ada sampah)
FROM python:3.10-slim

# Instal tools dasar yang dibutuhkan untuk membangun paket
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Instal Langflow versi spesifik (supaya tidak membengkak)
RUN pip install langflow --no-cache-dir

# Set environment variable untuk port Railway
ENV PORT=7860
EXPOSE 7860

# Jalankan Langflow
CMD ["python", "-m", "langflow", "run", "--host", "0.0.0.0", "--port", "7860"]
