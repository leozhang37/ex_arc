defmodule Arc.Actions.SignedUpload do
  defmacro __using__(_) do
    quote do
      def signed_upload(%Arc.OSSFileObject{} = file_object, options \\ []), do: Arc.Actions.SignedUpload.signed_upload(__MODULE__, file_object, options)
      def __signed_upload_method__(), do: Application.get_env(:arc, :signed_upload_method)

      defoverridable [__signed_upload_method__: 0]
    end
  end

  def signed_upload(definition, file_object, options) do
    definition.__signed_upload_method__().run(definition, file_object, options)
  end
end
