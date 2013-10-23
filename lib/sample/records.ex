defmodule N2O do
    defmacro  element(modu) do quote do [ancestor: :element, module: unquote(modu), id: :undefined,
              actions: [], class: [], style: [], source: [],
              data_fields: [], aria_states: [], body: [], role: [],
              tabindex: 0, show_if: false, html_tag: :undefined, title: []] end end
end

defmodule N2O.Records do
    require N2O
    defrecord :context, Record.extract(:context, from_lib: "n2o/include/wf.hrl")
    defrecord :button, Record.extract(:button, from_lib: "n2o/include/wf.hrl")
    defrecord :http_req, Record.extract(:http_req, from_lib: "cowboy/src/cowboy_req.erl")
    defrecord :dtl, N2O.element(:element_dtl) ++ [file: "index", bindings: [], app: __DIR__, folder: "priv/templates", ext: "html", bind_script: true]
end
