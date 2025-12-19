FROM python:3.13-slim-bookworm

WORKDIR /app

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV PYTHONUNBUFFERED=1

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY backend/ /app/backend/
COPY templates/ /app/templates/

WORKDIR /app/backend

EXPOSE 5000

CMD ["python", "app.py"]