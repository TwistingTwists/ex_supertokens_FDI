# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Model.CodeConsumeBodyOneOf1 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"preAuthSessionId",
    :"deviceId",
    :"userInputCode"
  ]

  @type t :: %__MODULE__{
    :"preAuthSessionId" => String.t,
    :"deviceId" => String.t,
    :"userInputCode" => String.t
  }
end

defimpl Poison.Decoder, for: FrontendDriverInterface.Model.CodeConsumeBodyOneOf1 do
  def decode(value, _options) do
    value
  end
end

