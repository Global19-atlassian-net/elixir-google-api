# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Firebase.V1beta1.Model.ListShaCertificatesResponse do
  @moduledoc """


  ## Attributes

  *   `certificates` (*type:* `list(GoogleApi.Firebase.V1beta1.Model.ShaCertificate.t)`, *default:* `nil`) - The list of each `ShaCertificate` associated with the `AndroidApp`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certificates => list(GoogleApi.Firebase.V1beta1.Model.ShaCertificate.t())
        }

  field(:certificates, as: GoogleApi.Firebase.V1beta1.Model.ShaCertificate, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.ListShaCertificatesResponse do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.ListShaCertificatesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.ListShaCertificatesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
