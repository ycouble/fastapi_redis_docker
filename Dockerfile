FROM python:3.8-alpine

RUN adduser -D myproj
WORKDIR /home/myproj
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt 

COPY fastapi_redis_docker fastapi_redis_docker 
RUN chown -R myproj:myproj ./
USER myproj

CMD uvicorn fastapi_redis_docker.app:app --host 0.0.0.0 --port 5057
