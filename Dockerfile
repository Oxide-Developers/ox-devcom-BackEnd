# Apline is a very light weight operating system for creating Dockerized applications
FROM python:3.8-alpine

# Environment variables in the image that are useful for the Python-based images
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Copying the requirements file to the Docker image
COPY requirements.txt /

# Installing necessary build environment and purge them in the end
RUN apk add --virtual .build-deps --no-cache postgresql-dev gcc python3-dev musl-dev && \
    pip install --no-cache-dir -r requirements.txt && \
    apk --purge del .build-deps

COPY . .

RUN apk add --no-cache libpq && \
    chmod +x /boot.sh && \
    dos2unix /boot.sh

CMD ["/boot.sh"]