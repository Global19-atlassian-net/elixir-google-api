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

defmodule GoogleApi.AnalyticsData.V1alpha.Model.CohortsRange do
  @moduledoc """
  Describes date range for a cohort report.

  ## Attributes

  *   `endOffset` (*type:* `integer()`, *default:* `nil`) - For daily cohorts, this will be the end day offset. For weekly cohorts, this will be the week offset.
  *   `granularity` (*type:* `String.t`, *default:* `nil`) - Reporting date range for each cohort is calculated based on these three fields.
  *   `startOffset` (*type:* `integer()`, *default:* `nil`) - For daily cohorts, this will be the start day offset. For weekly cohorts, this will be the week offset.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endOffset => integer(),
          :granularity => String.t(),
          :startOffset => integer()
        }

  field(:endOffset)
  field(:granularity)
  field(:startOffset)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1alpha.Model.CohortsRange do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1alpha.Model.CohortsRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1alpha.Model.CohortsRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
