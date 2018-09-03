defmodule Arc.Actions.OSSFileObject do
  defmacro __using__(_) do
    quote do
      def oss_file_object(version, file_and_scope), do: Arc.OSSFileObject.new(__MODULE__, version, file_and_scope)
    end
  end
end
