# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Model.InlineResponse20015OneOf do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"issuer",
    :"jwks_uri"
  ]

  @type t :: %__MODULE__{
    :"issuer" => String.t | nil,
    :"jwks_uri" => String.t | nil
  }
end

defimpl Poison.Decoder, for: FrontendDriverInterface.Model.InlineResponse20015OneOf do
  def decode(value, _options) do
    value
  end
end

