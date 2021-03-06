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

defmodule GoogleApi.Compute.V1.Model.InstancesSetLabelsRequest do
  @moduledoc """


  ## Attributes

  *   `labelFingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of the previous set of labels for this resource, used to prevent conflicts. Provide the latest fingerprint value when making a request to add or change labels.
  *   `labels` (*type:* `map()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labelFingerprint => String.t(),
          :labels => map()
        }

  field(:labelFingerprint)
  field(:labels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstancesSetLabelsRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstancesSetLabelsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstancesSetLabelsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
