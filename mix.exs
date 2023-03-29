defmodule BottledLua.MixProject do
  use Mix.Project

  def project do
    [
      app: :bottled_lua,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {BottledLua.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.27"},
      {:nostrum, "~> 0.6"}
    ]
  end
end
