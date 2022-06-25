# FrontendDriverInterface

These are the APIs exposed by our backend SDK. To be consumed by the frontend only.

### Building

To install the required dependencies and to build the elixir project, run:
```
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `frontend_driver_interface` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:frontend_driver_interface, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/frontend_driver_interface](https://hexdocs.pm/frontend_driver_interface).
