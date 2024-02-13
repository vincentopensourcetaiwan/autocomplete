defmodule AutocompleteWeb.Home do
  use AutocompleteWeb, :live_view

  def render(assigns) do
    ~H"""
    <h1>Welcome to Phoenix!</h1>
    <form phx-change="suggest">
      <input type="text" name="name" value={@name} />
    </form>
    <p><%= @name %></p>
    """
  end

  def mount(_params, _session, socket) do
    socket = assign(socket, name: "")
    {:ok, socket}
  end

  def handle_event("suggest", %{"name" => name}, socket) do
    {:noreply, assign(socket, name: name)}
  end
end
