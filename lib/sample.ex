defmodule Sample do

    use Application.Behaviour
    def start(_type, _args) do
        dispatch = :cowboy_router.compile([ {:_, [{"/", Sample.TopPageHandler, []}]} ])
        {:ok, _} = :cowboy.start_http(:http, 100, [port: 8080], [env: [dispatch: dispatch]])
        Sample.Sup.start_link end

end
