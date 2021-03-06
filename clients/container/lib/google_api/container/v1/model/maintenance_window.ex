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

defmodule GoogleApi.Container.V1.Model.MaintenanceWindow do
  @moduledoc """
  MaintenanceWindow defines the maintenance window to be used for the cluster.

  ## Attributes

  *   `dailyMaintenanceWindow` (*type:* `GoogleApi.Container.V1.Model.DailyMaintenanceWindow.t`, *default:* `nil`) - DailyMaintenanceWindow specifies a daily maintenance operation window.
  *   `maintenanceExclusions` (*type:* `%{optional(String.t) => GoogleApi.Container.V1.Model.TimeWindow.t}`, *default:* `nil`) - Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  *   `recurringWindow` (*type:* `GoogleApi.Container.V1.Model.RecurringTimeWindow.t`, *default:* `nil`) - RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dailyMaintenanceWindow => GoogleApi.Container.V1.Model.DailyMaintenanceWindow.t(),
          :maintenanceExclusions => %{
            optional(String.t()) => GoogleApi.Container.V1.Model.TimeWindow.t()
          },
          :recurringWindow => GoogleApi.Container.V1.Model.RecurringTimeWindow.t()
        }

  field(:dailyMaintenanceWindow, as: GoogleApi.Container.V1.Model.DailyMaintenanceWindow)
  field(:maintenanceExclusions, as: GoogleApi.Container.V1.Model.TimeWindow, type: :map)
  field(:recurringWindow, as: GoogleApi.Container.V1.Model.RecurringTimeWindow)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.MaintenanceWindow do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.MaintenanceWindow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.MaintenanceWindow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
