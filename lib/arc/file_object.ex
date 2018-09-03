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
end
