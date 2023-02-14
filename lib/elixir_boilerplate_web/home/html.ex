defmodule ElixirBoilerplateWeb.Home.HTML do
  import Phoenix.Template, only: [embed_templates: 1]

  embed_templates("templates/*")

  def render("index.html", assigns), do: index(assigns)
end
