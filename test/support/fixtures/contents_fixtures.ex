defmodule Autocomplete.ContentsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Autocomplete.Contents` context.
  """

  @doc """
  Generate a tag.
  """
  def tag_fixture(attrs \\ %{}) do
    {:ok, tag} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Autocomplete.Contents.create_tag()

    tag
  end
end
