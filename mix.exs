defmodule RandomUsername.Mixfile do
  use Mix.Project

  def project do
    [app: :random_username,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
		 package: package(),
     deps: deps()]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end

  defp package do
    [name: :random_username,
     files: ["lib", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Rufus Post"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/mynameisrufus/random_username",
              "Docs" => "https://github.com/mynameisrufus/random_username"}]
	end
end
