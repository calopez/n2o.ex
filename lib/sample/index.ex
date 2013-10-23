defmodule Sample.Index do

    def event(e) do :wf.insert_bottom(:history, [ :span.new(body: :wf.q(:message)), :br.new() ]) end
    def main() do :dtl.new(file: "index", bindings: [title: "Elixir N2O", body: body()]) end
    def body() do [ :div.new(id: :history),
                    :textbox.new(id: :message),
                    :button.new(id: :send, body: "Chat", postback: {:chat,12}, source: [:message]) ] end

end
