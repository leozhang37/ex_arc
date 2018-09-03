defmodule Arc.FileObject do
  @moduledoc """
  `FileObject` provides a common abstraction of a file.
  """

  @enforce_keys [:name]
  defstruct [
    :name,
    :size,
    :mime_type,
    :path
  ]

  alias Arc.Utils

  def new(%{mime_type: mime_type} = attrs) when not is_nil(mime_type) do
    struct(__MODULE__, attrs)
  end

  def new(%{name: name} = attrs) do
    attrs
    |> Map.put(:mime_type, Utils.mime_type(name))
    |> new()
  end
end
