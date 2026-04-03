FROM langflowai/langflow:latest
CMD ["python", "-m", "langflow", "run", "--host", "0.0.0.0", "--port", "$PORT"]
