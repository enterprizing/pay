defmodule PAY.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :pay,
      version: "0.6.0",
      elixir: "~> 1.7",
      description: "PAY Payment Services",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :pay,
      links: %{"GitHub" => "https://github.com/enterprizing/pay"}
    ]
  end

  def application() do
    [mod: {:pay, []}]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
