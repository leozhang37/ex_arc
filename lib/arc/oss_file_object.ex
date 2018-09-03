defmodule Arc.OSSFileObject do
  @moduledoc """
  `OSSFileObject` provides a common abstraction of file
  stored in object-storage service.
  """

  @enforce_keys [:bucket, :key, :name]
  defstruct [
    # OSS fields
    # {:bucket, :key} can uniquely determine a file
    :bucket,
    :key,
    :location,

    # Arc.FileObject keys
    :name,
    :size,
    :mime_type,
    :path
  ]

  alias Arc.FileObject

  def new(%{} = attrs) do
    struct(__MODULE__, attrs)
  end

  def new(%{} = attrs, %FileObject{} = file_object) do
    file_object
    |> Map.from_struct()
    |> Map.merge(attrs)
    |> new(attrs)
  end
end
