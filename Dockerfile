# source: https://bitbucket.org/atlassian/aws-ecr-push-image/src/master/Dockerfile

FROM python:3.9-slim

RUN apt-get update \
    && apt-get install --no-install-recommends -y docker \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# install requirements
COPY requirements.txt /usr/bin
WORKDIR /usr/bin
RUN pip install --no-cache-dir -r requirements.txt

