FROM alpine:latest
RUN apk add --no-cache python3
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . . 
CMD ["python3", "app.py"]