FROM language:3.13

WORKDIR /language

COPY . .

RUN apt-get update \
    && apt-get install aspell -y

RUN python -m pip install -r requirements.txt

RUN adduser -u 5678 --disabled-password --gecos "" language && chown -R language /language
USER language