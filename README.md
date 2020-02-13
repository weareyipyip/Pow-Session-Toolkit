# PowSessionToolkit

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `pow_session_toolkit` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:pow_session_toolkit, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/pow_session_toolkit](https://hexdocs.pm/pow_session_toolkit).

## Guide

### Configure


config :pow_session_toolkit, :pow,
  user: MyApp.DB.User,
  repo: MyApp.Repo,
  users_context: MyApp.DB.Users,
  cache_store_backend: Pow.Store.Backend.MnesiaCache

