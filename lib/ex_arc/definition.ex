defmodule ExArc.Definition do
  defmacro __using__(_) do
    quote do
      use Arc.Definition

      use Arc.Actions.Extensions
    end
  end
end
