# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.IAM.V1.Api.Organizations do
  @moduledoc """
  API calls for all endpoints tagged `Organizations`.
  """

  alias GoogleApi.IAM.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a new Role.

  ## Parameters

  - connection (GoogleApi.IAM.V1.Connection): Connection to server
  - organizations_id (String.t): Part of &#x60;parent&#x60;. The resource name of the parent resource in one of the following formats: &#x60;organizations/{ORGANIZATION_ID}&#x60; &#x60;projects/{PROJECT_ID}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (CreateRoleRequest): 

  ## Returns

  {:ok, %GoogleApi.IAM.V1.Model.Role{}} on success
  {:error, info} on failure
  """
  @spec iam_organizations_roles_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def iam_organizations_roles_create(
        connection,
        organizations_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/organizations/{organizationsId}/roles", %{
        "organizationsId" => URI.encode_www_form(organizations_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.Role{}])
  end

  @doc """
  Soft deletes a role. The role is suspended and cannot be used to create new IAM Policy Bindings. The Role will not be included in &#x60;ListRoles()&#x60; unless &#x60;show_deleted&#x60; is set in the &#x60;ListRolesRequest&#x60;. The Role contains the deleted boolean set. Existing Bindings remains, but are inactive. The Role can be undeleted within 7 days. After 7 days the Role is deleted and all Bindings associated with the role are removed.

  ## Parameters

  - connection (GoogleApi.IAM.V1.Connection): Connection to server
  - organizations_id (String.t): Part of &#x60;name&#x60;. The resource name of the role in one of the following formats: &#x60;organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}&#x60; &#x60;projects/{PROJECT_ID}/roles/{ROLE_NAME}&#x60;
  - roles_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;organizationsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :etag (binary()): Used to perform a consistent read-modify-write.

  ## Returns

  {:ok, %GoogleApi.IAM.V1.Model.Role{}} on success
  {:error, info} on failure
  """
  @spec iam_organizations_roles_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def iam_organizations_roles_delete(
        connection,
        organizations_id,
        roles_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :etag => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/organizations/{organizationsId}/roles/{rolesId}", %{
        "organizationsId" => URI.encode_www_form(organizations_id),
        "rolesId" => URI.encode_www_form(roles_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.Role{}])
  end

  @doc """
  Gets a Role definition.

  ## Parameters

  - connection (GoogleApi.IAM.V1.Connection): Connection to server
  - organizations_id (String.t): Part of &#x60;name&#x60;. The resource name of the role in one of the following formats: &#x60;roles/{ROLE_NAME}&#x60; &#x60;organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}&#x60; &#x60;projects/{PROJECT_ID}/roles/{ROLE_NAME}&#x60;
  - roles_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;organizationsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.IAM.V1.Model.Role{}} on success
  {:error, info} on failure
  """
  @spec iam_organizations_roles_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def iam_organizations_roles_get(
        connection,
        organizations_id,
        roles_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/organizations/{organizationsId}/roles/{rolesId}", %{
        "organizationsId" => URI.encode_www_form(organizations_id),
        "rolesId" => URI.encode_www_form(roles_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.Role{}])
  end

  @doc """
  Lists the Roles defined on a resource.

  ## Parameters

  - connection (GoogleApi.IAM.V1.Connection): Connection to server
  - organizations_id (String.t): Part of &#x60;parent&#x60;. The resource name of the parent resource in one of the following formats: &#x60;&#x60; (empty string) -- this refers to curated roles. &#x60;organizations/{ORGANIZATION_ID}&#x60; &#x60;projects/{PROJECT_ID}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): Optional limit on the number of roles to include in the response.
    - :pageToken (String.t): Optional pagination token returned in an earlier ListRolesResponse.
    - :showDeleted (boolean()): Include Roles that have been deleted.
    - :view (String.t): Optional view for the returned Role objects.

  ## Returns

  {:ok, %GoogleApi.IAM.V1.Model.ListRolesResponse{}} on success
  {:error, info} on failure
  """
  @spec iam_organizations_roles_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.ListRolesResponse.t()} | {:error, Tesla.Env.t()}
  def iam_organizations_roles_list(
        connection,
        organizations_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query,
      :showDeleted => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/organizations/{organizationsId}/roles", %{
        "organizationsId" => URI.encode_www_form(organizations_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.ListRolesResponse{}])
  end

  @doc """
  Updates a Role definition.

  ## Parameters

  - connection (GoogleApi.IAM.V1.Connection): Connection to server
  - organizations_id (String.t): Part of &#x60;name&#x60;. The resource name of the role in one of the following formats: &#x60;roles/{ROLE_NAME}&#x60; &#x60;organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}&#x60; &#x60;projects/{PROJECT_ID}/roles/{ROLE_NAME}&#x60;
  - roles_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;organizationsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :updateMask (String.t): A mask describing which fields in the Role have changed.
    - :body (Role): 

  ## Returns

  {:ok, %GoogleApi.IAM.V1.Model.Role{}} on success
  {:error, info} on failure
  """
  @spec iam_organizations_roles_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def iam_organizations_roles_patch(
        connection,
        organizations_id,
        roles_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/organizations/{organizationsId}/roles/{rolesId}", %{
        "organizationsId" => URI.encode_www_form(organizations_id),
        "rolesId" => URI.encode_www_form(roles_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.Role{}])
  end

  @doc """
  Undelete a Role, bringing it back in its previous state.

  ## Parameters

  - connection (GoogleApi.IAM.V1.Connection): Connection to server
  - organizations_id (String.t): Part of &#x60;name&#x60;. The resource name of the role in one of the following formats: &#x60;organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}&#x60; &#x60;projects/{PROJECT_ID}/roles/{ROLE_NAME}&#x60;
  - roles_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;organizationsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (UndeleteRoleRequest): 

  ## Returns

  {:ok, %GoogleApi.IAM.V1.Model.Role{}} on success
  {:error, info} on failure
  """
  @spec iam_organizations_roles_undelete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def iam_organizations_roles_undelete(
        connection,
        organizations_id,
        roles_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/organizations/{organizationsId}/roles/{rolesId}:undelete", %{
        "organizationsId" => URI.encode_www_form(organizations_id),
        "rolesId" => URI.encode_www_form(roles_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.Role{}])
  end
end
