# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FrontendDriverInterface.Api.PasswordlessRecipe do
  @moduledoc """
  API calls for all endpoints tagged `PasswordlessRecipe`.
  """

  alias FrontendDriverInterface.Connection
  import FrontendDriverInterface.RequestBuilder


  @doc """
  Check if an email exists Note that there is an invisible character at the end of the path, this was to avoid a conflict with the OpenAPI spec.  

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
  @spec passwordless_email_exists(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.InlineResponse2003.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def passwordless_email_exists(connection, api_base_path, email, opts \\ []) do
    optional_params = %{
      :"rid" => :headers
    }
    %{}
    |> method(:get)
    |> url("/#{api_base_path}/signup/email/exists⠀⠀")
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
  Check if an email exists 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - phone_number (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :rid (String.t): 
  ## Returns

  {:ok, FrontendDriverInterface.Model.InlineResponse2003.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec passwordless_phone_number_exists(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.InlineResponse2003.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def passwordless_phone_number_exists(connection, api_base_path, phone_number, opts \\ []) do
    optional_params = %{
      :"rid" => :headers
    }
    %{}
    |> method(:get)
    |> url("/#{api_base_path}/signup/phonenumber/exists")
    |> add_param(:query, :"phoneNumber", phone_number)
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
  Finish sign in/up process with passwordless 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - opts (KeywordList): [optional] Optional parameters
    - :rid (String.t): 
    - :body (CodeConsumeBody1): 
  ## Returns

  {:ok, FrontendDriverInterface.Model.InlineResponse2002.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec passwordless_sign_in_up_consume(Tesla.Env.client, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.InlineResponse2002.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def passwordless_sign_in_up_consume(connection, api_base_path, opts \\ []) do
    optional_params = %{
      :"rid" => :headers,
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/#{api_base_path}/signinup/code/consume")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FrontendDriverInterface.Model.InlineResponse2002{}},
      { 404, %FrontendDriverInterface.Model.NotFound{}},
      { 500, %FrontendDriverInterface.Model.InternalError{}}
    ])
  end

  @doc """
  Resend passwordless code 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - opts (KeywordList): [optional] Optional parameters
    - :rid (String.t): 
    - :body (CodeResendBody1): 
  ## Returns

  {:ok, FrontendDriverInterface.Model.InlineResponse2001.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec passwordless_sign_in_up_resend(Tesla.Env.client, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:ok, FrontendDriverInterface.Model.InlineResponse2001.t} | {:error, Tesla.Env.t}
  def passwordless_sign_in_up_resend(connection, api_base_path, opts \\ []) do
    optional_params = %{
      :"rid" => :headers,
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/#{api_base_path}/signinup/code/resend")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FrontendDriverInterface.Model.InlineResponse2001{}},
      { 404, %FrontendDriverInterface.Model.NotFound{}},
      { 500, %FrontendDriverInterface.Model.InternalError{}}
    ])
  end

  @doc """
  Start sign in/up process with passwordless 

  ## Parameters

  - connection (FrontendDriverInterface.Connection): Connection to server
  - api_base_path (String.t): Its value depends on the apiBasePath set by the user
  - opts (KeywordList): [optional] Optional parameters
    - :rid (String.t): 
    - :body (SigninupCodeBody1): 
  ## Returns

  {:ok, FrontendDriverInterface.Model.InlineResponse200.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec passwordless_sign_in_up_start(Tesla.Env.client, String.t, keyword()) :: {:ok, FrontendDriverInterface.Model.InlineResponse200.t} | {:ok, FrontendDriverInterface.Model.InternalError.t} | {:ok, FrontendDriverInterface.Model.NotFound.t} | {:error, Tesla.Env.t}
  def passwordless_sign_in_up_start(connection, api_base_path, opts \\ []) do
    optional_params = %{
      :"rid" => :headers,
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/#{api_base_path}/signinup/code")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FrontendDriverInterface.Model.InlineResponse200{}},
      { 404, %FrontendDriverInterface.Model.NotFound{}},
      { 500, %FrontendDriverInterface.Model.InternalError{}}
    ])
  end
end
