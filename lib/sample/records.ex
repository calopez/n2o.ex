defmodule N2O do

    defrecord :dtl, ancestor: :element, module: :element_dtl, id: :undefined,
                    actions: [], class: [], style: [], source: [],
                    data_fields: [],aria_states: [], body: [], role: [],
                    tabindex: 0, show_if: false, html_tag: :undefined,
                    title: "", file: "index", bindings: [], app: "/home/maxim/synrc/n2o_elixir",
                    folder: "priv/templates", ext: "html", bind_script: true

    defrecord :context, Record.extract(:context, from_lib: "n2o/include/wf.hrl")
    defrecord :button, Record.extract(:button, from_lib: "n2o/include/wf.hrl")
    defrecord :http_req, Record.extract(:http_req, from_lib: "cowboy/src/cowboy_req.erl")

end
