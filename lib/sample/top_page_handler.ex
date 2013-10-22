defmodule Sample.TopPageHandler do

    def init(_transport, req, []) do {:ok, req, nil} end
    def terminate(_reason, _req, _state), do: :ok
    def handle(req, state) do
        {:ok, req} = :cowboy_req.reply(200, [], "Hello world!", req)
        {:ok, req, state} end

end
