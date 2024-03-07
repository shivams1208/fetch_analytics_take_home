FROM python:3.8.8-slim

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y install gcc mono-mcs && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY src .

EXPOSE 8889

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root", "--port=8889"]