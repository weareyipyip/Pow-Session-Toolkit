# PowSessionToolkit

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `pow_session_toolkit` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:pow_session_toolkit, "~> 0.1.5"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/pow_session_toolkit](https://hexdocs.pm/pow_session_toolkit).

## Guide

### Configuration

Configure pow itself as usual, for example:

```
config :my_otp_app, :pow,
  user: MyApp.DB.User,
  repo: MyApp.Repo,
  users_context: MyApp.DB.Users,
  cache_store_backend: Pow.Store.Backend.MnesiaCache
```

Add a key to the standard pow config called `:pow_session_toolkit` and add the configuration values as specified in [session_plugs.ex](./lib/pow_sessions_toolkit/session_plugs.ex) there:

```
config :my_otp_app, :pow,
  user: MyApp.DB.User,
  repo: MyApp.Repo,
  users_context: MyApp.DB.Users,
  cache_store_backend: Pow.Store.Backend.MnesiaCache,
  pow_session_toolkit: [
    access_token_ttl: 3600
  ]
```