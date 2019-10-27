FROM ruby:2.6.5

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -\
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y --no-install-recommends build-essential nodejs yarn postgresql-client \
    && apt-get clean
# no need to copy files now as docker-compose will handle the mounting
ENV APPDIR=/app \
    TERM=xterm

WORKDIR $APPDIR

ENTRYPOINT ["docker-entrypoint.sh"]
