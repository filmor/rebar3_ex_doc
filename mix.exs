defmodule RebarHexDoc.MixProject do
  use Mix.Project

  def project do
    [
      app: :rebar_ex_doc,
      version: "0.2.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: [main_module: ExDoc.CLI, name: "ex_doc", path: "priv/ex_doc"],
      docs: [main: "readme", # The main page in the docs
          extras: ["README.md"]]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: []
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.27.1"}
    ]
  end


end
