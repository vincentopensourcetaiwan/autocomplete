defmodule AutocompleteWeb.Home do
  use AutocompleteWeb, :live_view
  import Ecto.Query
  alias Autocomplete.Repo
  alias Autocomplete.Contents.Tag

  def render(assigns) do
    ~H"""
    <h1>Welcome to Phoenix!</h1>
    <form phx-change="suggest">
      <input type="text" name="name" value={@name} />
    </form>
    <%= for tag <- @result do %>
      <p><%= tag.name %></p>
    <% end %>
    """
  end

  def mount(_params, _session, socket) do
    socket = assign(socket, name: "", result: [])
    {:ok, socket}
  end

  def handle_event("suggest", %{"name" => name}, socket) do
    query =
      from(t in Tag,
        where: like(t.name, ^"#{name}%"),
        select: %{tag_id: t.id, name: t.name}
      )

    result = Repo.all(query)
    socket = assign(socket, name: name, result: result)
    {:noreply, assign(socket, name: name)}
  end
end
