defmodule Sample.Index do

    def main() do :dtl.new(file: "index", bindings: [title: "Elixir N2O", body: "N2O Sample"]) end
    def body() do "N2O Sample" end
    def event(e) do IO.puts "Event: #{inspect e}" end

end
