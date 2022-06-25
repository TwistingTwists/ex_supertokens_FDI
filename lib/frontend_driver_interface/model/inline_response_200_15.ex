# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Model.InlineResponse20015 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"issuer",
    :"jwks_uri",
    :"status",
    :"message"
  ]

  @type t :: %__MODULE__{
    :"issuer" => String.t | nil,
    :"jwks_uri" => String.t | nil,
    :"status" => String.t | nil,
    :"message" => String.t | nil
  }
end

defimpl Poison.Decoder, for: FrontendDriverInterface.Model.InlineResponse20015 do
  def decode(value, _options) do
    value
  end
end
