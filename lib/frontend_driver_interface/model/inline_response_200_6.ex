# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Model.InlineResponse2006 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"status",
    :"message"
  ]

  @type t :: %__MODULE__{
    :"status" => String.t | nil,
    :"message" => String.t | nil
  }
end

defimpl Poison.Decoder, for: FrontendDriverInterface.Model.InlineResponse2006 do
  def decode(value, _options) do
    value
  end
end

