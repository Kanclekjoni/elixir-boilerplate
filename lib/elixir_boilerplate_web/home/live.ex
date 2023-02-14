defmodule ElixirBoilerplateWeb.Home.Live do
  use Phoenix.LiveView, layout: {ElixirBoilerplateWeb.Layouts, :live}

  embed_templates("templates/*")

  def mount(_, _, socket) do
    socket = assign(socket, :message, "Hello, world!")
    socket = assign(socket, :counter, 0)

    {:ok, socket}
  end

  def handle_event("increment_counter", _, socket) do
    socket = assign(socket, :counter, socket.assigns.counter + 1)
    {:noreply, socket}
  end

  def handle_event("decrement_counter", _, socket) do
    socket = assign(socket, :counter, socket.assigns.counter - 1)
    {:noreply, socket}
  end

  def handle_event("add_flash_success", _, socket) do
    socket = put_flash(socket, :success, "Success: #{DateTime.utc_now()}")
    {:noreply, socket}
  end

  def handle_event("add_flash_error", _, socket) do
    socket = put_flash(socket, :error, "Error: #{DateTime.utc_now()}")
    {:noreply, socket}
  end

  def render(assigns), do: index_live(assigns)
end
