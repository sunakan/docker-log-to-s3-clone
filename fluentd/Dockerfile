ARG FLUENTD_IMAGE_TAG
FROM fluentd:${FLUENTD_IMAGE_TAG}

USER root

RUN fluent-gem install fluent-plugin-s3

COPY ./fluent.conf /fluentd/etc/fluent.conf

USER fluent
