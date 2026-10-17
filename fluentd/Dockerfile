FROM fluent/fluentd:v1.18.0-debian-1.0
USER root
RUN gem install elasticsearch -v 8.19.0 --no-document \
 && gem install fluent-plugin-elasticsearch -v 5.4.3 --no-document \
 && gem cleanup \
 && mkdir -p /fluentd/log/buffer \
 && chown -R fluent:fluent /fluentd/log
COPY fluent.conf /fluentd/etc/fluent.conf
USER fluent
