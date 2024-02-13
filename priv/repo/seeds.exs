# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Autocomplete.Repo.insert!(%Autocomplete.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Autocomplete.Repo
alias Autocomplete.Contents.Tag

Repo.insert!(%Tag{name: "elixir"})
Repo.insert!(%Tag{name: "phoenix"})
Repo.insert!(%Tag{name: "ecto"})
