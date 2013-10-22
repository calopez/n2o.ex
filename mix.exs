defmodule Sampple.Mixfile do
  use Mix.Project
  def project do [ app: :sample, version: "0.0.1", deps: deps ] end
  def application do [ mod: { Sample, [] }, applications: [:cowboy] ] end
  defp deps do [ {:n2o, github: "5HT/n2o"} ] end
end
