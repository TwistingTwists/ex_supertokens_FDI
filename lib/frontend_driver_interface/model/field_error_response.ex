# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Model.FieldErrorResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"status",
    :"formFields"
  ]

  @type t :: %__MODULE__{
    :"status" => String.t | nil,
    :"formFields" => [FrontendDriverInterface.Model.FieldErrorResponseFormFields.t] | nil
  }
end

defimpl Poison.Decoder, for: FrontendDriverInterface.Model.FieldErrorResponse do
  import FrontendDriverInterface.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"formFields", :list, FrontendDriverInterface.Model.FieldErrorResponseFormFields, options)
  end
end

