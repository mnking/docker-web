FROM nginx

ENV WORK_PATH /app
ENV WEB_PATH $WORK_PATH/www
ENV BIN_PATH $WORK_PATH/bin
ENV PATH $PATH:/usr/local/bin/

# Install wget
RUN apt-get update && \
    apt-get install wget -y

# Install PHP 7
RUN echo 'deb http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list && \
    wget https://www.dotdeb.org/dotdeb.gpg && \
    apt-key add dotdeb.gpg && \
    apt-get update && apt-get install php7.0-fpm -y

VOLUME ["$WEB_PATH"]

WORKDIR $WORK_PATH

COPY ./bin/docker-entrypoint /usr/local/bin/

CMD ["sh","/usr/local/bin/docker-entrypoint"]