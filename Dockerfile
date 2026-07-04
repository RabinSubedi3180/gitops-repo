FROM python:3.11-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir  -r requirements.txt

COPY app.py .

ENV PATH=/root/.local/bin:$PATH
ENV APP_ENV=Production

USER 1001
EXPOSE 5000

CMD ["python", "app.py"]
