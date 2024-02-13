defmodule AutocompleteWeb.Home do
  use AutocompleteWeb, :live_view

  def render(assigns) do
    ~H"""
    <h1>Welcome to Phoenix!</h1>
    <form>
      <input type="text" name="name" value={@name} />
    </form>
    """
  end

  def mount(_params, _session, socket) do
    socket = assign(socket, name: "")
    {:ok, socket}
  end
end
