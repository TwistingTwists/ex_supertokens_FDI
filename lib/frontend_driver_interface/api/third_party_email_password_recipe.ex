# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Api.ThirdPartyEmailPasswordRecipe do
  @moduledoc """
  API calls for all endpoints tagged `ThirdPartyEmailPasswordRecipe`.
  """

  alias FrontendDriverInterface.Connection
  import FrontendDriverInterface.RequestBuilder


  @doc """
  Signin/up a user 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - opts (KeywordList): [optional] Optional parameters
    - :rid (String.t): 
    - :third_party_id (String.t): 
  ## Returns

  {:ok, FrontendDriverInterface.Model.InlineResponse2005.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec third_party_email_password_authorisation_url(Tesla.Env.client, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.InlineResponse2005.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def third_party_email_password_authorisation_url(connection, api_base_path, opts \\ []) do
    optional_params = %{
      :"rid" => :headers,
      :"thirdPartyId" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{api_base_path}/authorisationurl⠀")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FrontendDriverInterface.Model.InlineResponse2005{}},
      { 404, %FrontendDriverInterface.Model.NotFound{}},
      { 500, %FrontendDriverInterface.Model.InternalError{}}
    ])
  end

  @doc """
  Handles sign in with the apple. 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - opts (KeywordList): [optional] Optional parameters
    - :code (String.t): The Authorization code which will be exchanged for an access token
    - :state (String.t): A unique string used to mitigate CSRF attacks
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec third_party_email_password_callback_apple(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def third_party_email_password_callback_apple(connection, api_base_path, opts \\ []) do
    optional_params = %{
      :"code" => :form,
      :"state" => :form
    }
    %{}
    |> method(:post)
    |> url("/#{api_base_path}/callback/apple⠀")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 404, %FrontendDriverInterface.Model.NotFound{}},
      { 500, %FrontendDriverInterface.Model.InternalError{}}
    ])
  end

  @doc """
  Check if an email exists 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - email (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :rid (String.t): 
  ## Returns

  {:ok, FrontendDriverInterface.Model.InlineResponse2003.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec third_party_email_password_email_exists(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.InlineResponse2003.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def third_party_email_password_email_exists(connection, api_base_path, email, opts \\ []) do
    optional_params = %{
      :"rid" => :headers
    }
    %{}
    |> method(:get)
    |> url("/#{api_base_path}/signup/email/exists⠀")
    |> add_param(:query, :"email", email)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FrontendDriverInterface.Model.InlineResponse2003{}},
      { 404, %FrontendDriverInterface.Model.NotFound{}},
      { 500, %FrontendDriverInterface.Model.InternalError{}}
    ])
  end

  @doc """
  Reset a password using password reset token 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - opts (KeywordList): [optional] Optional parameters
    - :rid (String.t): 
    - :body (PasswordResetBody1): 
  ## Returns

  {:ok, FrontendDriverInterface.Model.InlineResponse20010.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec third_party_email_password_password_reset(Tesla.Env.client, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.InlineResponse20010.t} | {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def third_party_email_password_password_reset(connection, api_base_path, opts \\ []) do
    optional_params = %{
      :"rid" => :headers,
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/#{api_base_path}/user/password/reset⠀")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FrontendDriverInterface.Model.InlineResponse20010{}},
      { 404, %FrontendDriverInterface.Model.NotFound{}},
      { 500, %FrontendDriverInterface.Model.InternalError{}}
    ])
  end

  @doc """
  Generate a new reset password token for this user 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - opts (KeywordList): [optional] Optional parameters
    - :rid (String.t): 
    - :body (ResetTokenBody1): 
  ## Returns

  {:ok, FrontendDriverInterface.Model.InlineResponse2009.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec third_party_email_password_password_reset_token(Tesla.Env.client, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.InlineResponse2009.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def third_party_email_password_password_reset_token(connection, api_base_path, opts \\ []) do
    optional_params = %{
      :"rid" => :headers,
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/#{api_base_path}/user/password/reset/token⠀")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FrontendDriverInterface.Model.InlineResponse2009{}},
      { 404, %FrontendDriverInterface.Model.NotFound{}},
      { 500, %FrontendDriverInterface.Model.InternalError{}}
    ])
  end

  @doc """
  Signin/up a user using a Social Provider 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - opts (KeywordList): [optional] Optional parameters
    - :rid (String.t): 
    - :body (ApiBasePathSigninupBody2): Should contain one of code or authCodeResponse, clientId is optional
  ## Returns

  {:ok, FrontendDriverInterface.Model.InlineResponse2004.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec third_party_email_password_sign_in_up(Tesla.Env.client, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.InlineResponse2004.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def third_party_email_password_sign_in_up(connection, api_base_path, opts \\ []) do
    optional_params = %{
      :"rid" => :headers,
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/#{api_base_path}/signinup⠀")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FrontendDriverInterface.Model.InlineResponse2004{}},
      { 404, %FrontendDriverInterface.Model.NotFound{}},
      { 500, %FrontendDriverInterface.Model.InternalError{}}
    ])
  end

  @doc """
  Signin a user with email ID and password 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - opts (KeywordList): [optional] Optional parameters
    - :rid (String.t): 
    - :body (ApiBasePathSigninBody1): 
  ## Returns

  {:ok, FrontendDriverInterface.Model.InlineResponse2007.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec third_party_email_passwordsign_in(Tesla.Env.client, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.InlineResponse2007.t} | {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def third_party_email_passwordsign_in(connection, api_base_path, opts \\ []) do
    optional_params = %{
      :"rid" => :headers,
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/#{api_base_path}/signin⠀")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FrontendDriverInterface.Model.InlineResponse2007{}},
      { 404, %FrontendDriverInterface.Model.NotFound{}},
      { 500, %FrontendDriverInterface.Model.InternalError{}}
    ])
  end

  @doc """
  Signup a user with email ID and password 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - opts (KeywordList): [optional] Optional parameters
    - :rid (String.t): 
    - :body (ApiBasePathSignupBody1): 
  ## Returns

  {:ok, FrontendDriverInterface.Model.InlineResponse2008.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec third_party_email_passwordsign_up(Tesla.Env.client, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.InlineResponse2008.t} | {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def third_party_email_passwordsign_up(connection, api_base_path, opts \\ []) do
    optional_params = %{
      :"rid" => :headers,
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/#{api_base_path}/signup⠀")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FrontendDriverInterface.Model.InlineResponse2008{}},
      { 404, %FrontendDriverInterface.Model.NotFound{}},
      { 500, %FrontendDriverInterface.Model.InternalError{}}
    ])
  end
end