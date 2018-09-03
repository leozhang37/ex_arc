defmodule Arc.Actions.SignedUploadMethod do
  @callback run(atom(), %Arc.OSSFileObject{}, Keyword.t()) :: %{}
end
