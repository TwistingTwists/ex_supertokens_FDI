# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Api.JWTRecipe do
  @moduledoc """
  API calls for all endpoints tagged `JWTRecipe`.
  """

  alias FrontendDriverInterface.Connection
  import FrontendDriverInterface.RequestBuilder


  @doc """
  Get all JSON web keys for JWT verification 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, FrontendDriverInterface.Model.InlineResponse20014.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_jwks(Tesla.Env.client, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.BadRequest.t} | {:ok, FrontendDriverInterface.Model.InlineResponse20014.t} | {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def get_jwks(connection, api_base_path, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{api_base_path}/jwt/jwks.json")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FrontendDriverInterface.Model.InlineResponse20014{}},
      { 400, %FrontendDriverInterface.Model.BadRequest{}},
      { 404, %FrontendDriverInterface.Model.NotFound{}},
      { 500, %FrontendDriverInterface.Model.InternalError{}}
    ])
  end
end