FROM gitpod/workspace-base:latest

RUN sudo add-apt-repository ppa:rabbitmq/rabbitmq-erlang \
    && sudo apt-get update \
    && sudo apt-get -y install --no-install-recommends elixir erlang-dev erlang-xmerl inotify-tools
RUN mix local.hex --force && mix archive.install hex phx_new

