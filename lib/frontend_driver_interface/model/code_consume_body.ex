# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Model.CodeConsumeBody do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"preAuthSessionId",
    :"linkCode",
    :"deviceId",
    :"userInputCode"
  ]

  @type t :: %__MODULE__{
    :"preAuthSessionId" => String.t,
    :"linkCode" => String.t,
    :"deviceId" => String.t,
    :"userInputCode" => String.t
  }
end

defimpl Poison.Decoder, for: FrontendDriverInterface.Model.CodeConsumeBody do
  def decode(value, _options) do
    value
  end
end

