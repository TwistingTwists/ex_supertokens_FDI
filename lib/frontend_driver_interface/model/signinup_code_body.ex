# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Model.SigninupCodeBody do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"email",
    :"phoneNumber",
    :"status",
    :"message"
  ]

  @type t :: %__MODULE__{
    :"email" => String.t,
    :"phoneNumber" => String.t,
    :"status" => String.t | nil,
    :"message" => String.t | nil
  }
end

defimpl Poison.Decoder, for: FrontendDriverInterface.Model.SigninupCodeBody do
  def decode(value, _options) do
    value
  end
end

