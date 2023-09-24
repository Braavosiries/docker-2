FROM python:3.9-alpine
WORKDIR /app
COPY requirements.txt .
COPY app.py .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD [ "python", "app.py" ]
