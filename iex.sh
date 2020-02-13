#!/bin/sh

ELIXIR_VERSION=${1:-1.9}

docker-compose run --rm pow_session_toolkit_$ELIXIR_VERSION /bin/sh -c "mix do local.hex --force, local.rebar --force, deps.get && iex -S mix"