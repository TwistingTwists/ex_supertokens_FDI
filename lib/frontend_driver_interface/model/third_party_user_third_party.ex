# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Model.ThirdPartyUserThirdParty do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"userId"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"userId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: FrontendDriverInterface.Model.ThirdPartyUserThirdParty do
  def decode(value, _options) do
    value
  end
end

