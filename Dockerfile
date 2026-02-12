FROM python:3.9-slim

WORKDIR /app

ARG BUILD_ID
ENV BUILD_ID=$BUILD_ID

COPY . /app
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
