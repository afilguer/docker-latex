# Dockerfile
FROM debian:stable-slim
MAINTAINER afilguer <antonio.filgueras@bsc.es>

RUN apt update && apt install -y --no-install-recommends \
  make \
  git \
  python3 \
  python3-matplotlib \
  python3-pygments \
  texlive-full \
  inkscape
RUN sed -i 's/^.*policy.*coder.*none.*PDF.*//' /etc/ImageMagick-6/policy.xml
CMD ["bash"]
