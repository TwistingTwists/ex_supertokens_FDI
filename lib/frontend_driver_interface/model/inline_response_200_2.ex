# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Model.InlineResponse2002 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"status",
    :"createdNewUser",
    :"user",
    :"failedCodeInputAttemptCount",
    :"maximumCodeInputAttempts",
    :"message"
  ]

  @type t :: %__MODULE__{
    :"status" => String.t | nil,
    :"createdNewUser" => boolean() | nil,
    :"user" => FrontendDriverInterface.Model.PasswordlessUser.t | nil,
    :"failedCodeInputAttemptCount" => float() | nil,
    :"maximumCodeInputAttempts" => float() | nil,
    :"message" => String.t | nil
  }
end

defimpl Poison.Decoder, for: FrontendDriverInterface.Model.InlineResponse2002 do
  import FrontendDriverInterface.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"user", :struct, FrontendDriverInterface.Model.PasswordlessUser, options)
  end
end

