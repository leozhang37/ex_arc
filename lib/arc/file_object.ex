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

  def new(%{name: name, mime_type: nil} = attrs) do
    attrs
    |> Map.put(:mime_type, Utils.mime_type(name))
    |> new()
  end

  def new(%{} = attrs) do
    struct(__MODULE__, attrs)
  end
end
