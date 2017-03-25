defmodule RandomUsername.Mixfile do
  use Mix.Project

  @version "0.1.0"

  @description "Generates random usernames"
  @repo_url "https://github.com/mynameisrufus/random_username"

  def project do
    [app: :random_username,
     version: @version,
     description: @description,
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
		 package: package(),
     deps: deps(),
     docs: [main: "RandomUsername", extras: ["README.md"]]]
  end

  defp deps do
    [{:ex_doc, "~> 0.11", only: :dev}]
  end

  defp package do
    [name: :random_username,
     files: ["lib", "mix.exs", "README*"],
     maintainers: ["Rufus Post"],
     licenses: ["BSD"],
     links: %{"GitHub" => @repo_url},
     files: ~w(lib mix.exs *.md)]
	end
end
