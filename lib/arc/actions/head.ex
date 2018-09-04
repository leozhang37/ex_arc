defmodule Arc.Actions.Head do
  defmacro __using__(_) do
    quote do
      def head(%Arc.OSSFileObject{} = file_object), do: Arc.Actions.head(__MODULE__, file_object)
    end
  end

  def head(definition, file_object) do
    definition.__storage().head(file_object)
  end
end
