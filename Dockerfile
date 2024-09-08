FROM python:3.11-alpine3.20

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN adduser ansible \
      --disabled-password \
      --home /app \
      --shell /bin/bash

ENV PATH=/app/.venv/bin:$PATH

RUN apk add --no-cache bash sudo \
 && echo 'ansible ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/ansible

USER ansible

RUN python -m venv /app/.venv \
 && pip install \
      --disable-pip-version-check \
      --no-cache-dir \
      -r /app/requirements.txt

COPY examples /app/examples

ENTRYPOINT []
CMD ["/bin/bash"]