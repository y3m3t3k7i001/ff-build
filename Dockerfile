FROM debian:11

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get install -y curl

RUN bash <(curl -sSL https://ffmpeg.optimizethis.net) --build --latest

CMD bin/bash
