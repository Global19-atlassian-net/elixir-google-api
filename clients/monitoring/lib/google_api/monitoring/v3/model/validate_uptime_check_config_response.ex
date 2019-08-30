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

defmodule GoogleApi.Monitoring.V3.Model.ValidateUptimeCheckConfigResponse do
  @moduledoc """
  The protocol for the ValidateUptimeCheckConfigResponse response.

  ## Attributes

  *   `uptimeCheckResults` (*type:* `list(GoogleApi.Monitoring.V3.Model.UptimeCheckResult.t)`, *default:* `nil`) - The results of the uptime check execution (includes one result per group member, up to a maximum of 3 randomly selected group members).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :uptimeCheckResults => list(GoogleApi.Monitoring.V3.Model.UptimeCheckResult.t())
        }

  field(:uptimeCheckResults, as: GoogleApi.Monitoring.V3.Model.UptimeCheckResult, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.ValidateUptimeCheckConfigResponse do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.ValidateUptimeCheckConfigResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.ValidateUptimeCheckConfigResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
