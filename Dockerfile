FROM frolvlad/alpine-glibc

ARG AWS_DEFAULT_REGION
ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY

RUN apk add  --no-cache --update \
    curl \
    && rm -rf /var/cache/apk/* \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
	&& ./aws/install \
	&& aws --version