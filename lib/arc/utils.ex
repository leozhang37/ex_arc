defmodule Arc.Utils do
  @default_mime_type "application/octet-stream"
  @iso_8601_extended_format "%FT%TZ"

  def mime_type(filename) do
    case Path.extname(filename) do
      "." <> ext -> MIME.type(ext)
        _ -> @default_mime_type
    end
  end

  def iso_8601_extended_time(%DateTime{} = datetime) do
    Timex.format!(datetime, @iso_8601_extended_format, :strftime)
  end
end
