# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Model.SignupResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"status",
    :"user"
  ]

  @type t :: %__MODULE__{
    :"status" => FrontendDriverInterface.Model.StatusOk.t | nil,
    :"user" => FrontendDriverInterface.Model.User.t | nil
  }
end

defimpl Poison.Decoder, for: FrontendDriverInterface.Model.SignupResponse do
  import FrontendDriverInterface.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"status", :struct, FrontendDriverInterface.Model.StatusOk, options)
    |> deserialize(:"user", :struct, FrontendDriverInterface.Model.User, options)
  end
end

