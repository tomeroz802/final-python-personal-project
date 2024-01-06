FROM python:3.8-slim-buster
EXPOSE 5000
WORKDIR /project
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python3", "app.py","--host=0.0.0.0"]