defmodule ElixirBoilerplateWeb.Layouts do
  use Phoenix.Component

  alias Phoenix.LiveView.JS
  alias ElixirBoilerplateWeb.Router.Helpers, as: Routes

  embed_templates("templates/*")

  attr(:flash, :map, required: true)
  attr(:kind, :atom, required: true)
  def flash(assigns)

  def hide_flash(id) do
    "lv:clear-flash"
    |> JS.push()
    |> JS.hide(to: id)
  end
end
