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

defmodule GoogleApi.HealthCare.V1beta1.Model.ErrorDetail do
  @moduledoc """
  Structure to describe the error encountered during batch operation on one resource. This is used both for sample errors in operation response, and for format of errors in error reports.

  ## Attributes

  *   `error` (*type:* `GoogleApi.HealthCare.V1beta1.Model.Status.t`, *default:* `nil`) - The status of the error.
  *   `resource` (*type:* `String.t`, *default:* `nil`) - The identifier of the resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => GoogleApi.HealthCare.V1beta1.Model.Status.t(),
          :resource => String.t()
        }

  field(:error, as: GoogleApi.HealthCare.V1beta1.Model.Status)
  field(:resource)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ErrorDetail do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ErrorDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ErrorDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
