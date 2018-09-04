defmodule Arc.Actions.Extensions do
  defmacro __using__(_) do
    quote do
      use Arc.Actions.StorageCommon
      use Arc.Actions.OSSFileObject
      use Arc.Actions.SignedUpload
      use Arc.Actions.Head
    end
  end
end
