defmodule ElixirBoilerplateWeb.Session do
  def config do
    [
      store: :cookie,
      key: Application.get_env(:elixir_boilerplate, ElixirBoilerplateWeb.Endpoint)[:session_key],
      signing_salt: Application.get_env(:elixir_boilerplate, ElixirBoilerplateWeb.Endpoint)[:session_signing_salt]
    ]
  end
end
