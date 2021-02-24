FROM elixir:1.11.3-alpine 

# By convention, /opt is typically used for applications
WORKDIR /opt/app

# This step installs all the build tools we'll need
RUN apk update && \
  apk upgrade --no-cache && \
  apk add --no-cache git build-base && \
  mix local.rebar --force && \
  mix local.hex --force

# This copies our app source code into the build container
COPY . .

RUN mix do deps.get, deps.compile, compile

RUN apk update && apk add --no-cache  bash openssl-dev

ENV REPLACE_OS_VARS=true \
    APP_NAME=${APP_NAME}

CMD ["mix",  "phx.server"] 