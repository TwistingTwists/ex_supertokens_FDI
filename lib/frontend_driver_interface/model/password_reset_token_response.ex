# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Model.PasswordResetTokenResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"status"
  ]

  @type t :: %__MODULE__{
    :"status" => FrontendDriverInterface.Model.StatusOk.t | nil
  }
end

defimpl Poison.Decoder, for: FrontendDriverInterface.Model.PasswordResetTokenResponse do
  import FrontendDriverInterface.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"status", :struct, FrontendDriverInterface.Model.StatusOk, options)
  end
end

