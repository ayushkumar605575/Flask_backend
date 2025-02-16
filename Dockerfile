FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app
EXPOSE 5100
CMD ["python", "FlaskApp/app/app.py"]
