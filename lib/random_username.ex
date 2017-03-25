defmodule RandomUsername do
  def adjective(options \\ %{}) do
    get_item("adjectives", options)
  end

  def noun(options \\ %{}) do
    get_item("nouns", options)
  end

  def username(options \\ %{}) do
    adjective(options) <> noun(options)
  end

  def get_item(filename, options \\ %{}) do
    items = items_from_file(filename)
    Enum.random(items)
  end

  def items_from_file(filename) do
    String.split(File.read!(__DIR__ <> "/random_username/#{filename}.txt"), "\n")
  end
end
