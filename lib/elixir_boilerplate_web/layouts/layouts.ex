defmodule ElixirBoilerplateWeb.Layouts do
  import Phoenix.Template, only: [embed_templates: 1]

  alias Phoenix.LiveView.JS
  alias ElixirBoilerplateWeb.Router.Helpers, as: Routes

  embed_templates("templates/*")

  def hide_flash(id) do
    "lv:clear-flash"
    |> JS.push()
    |> JS.hide(to: id)
  end
end
