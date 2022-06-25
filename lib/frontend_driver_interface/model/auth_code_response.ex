# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Model.AuthCodeResponse do
  @moduledoc """
  Can contain random data other than the two listed below
  """

  @derive [Poison.Encoder]
  defstruct [
    :"access_token",
    :"id_token"
  ]

  @type t :: %__MODULE__{
    :"access_token" => String.t,
    :"id_token" => String.t | nil
  }
end

defimpl Poison.Decoder, for: FrontendDriverInterface.Model.AuthCodeResponse do
  def decode(value, _options) do
    value
  end
end
