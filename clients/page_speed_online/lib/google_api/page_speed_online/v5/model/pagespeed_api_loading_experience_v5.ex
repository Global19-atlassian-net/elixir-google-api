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

defmodule GoogleApi.PageSpeedOnline.V5.Model.PagespeedApiLoadingExperienceV5 do
  @moduledoc """
  The CrUX loading experience object that contains CrUX data breakdowns.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - The url, pattern or origin which the metrics are on.
  *   `initial_url` (*type:* `String.t`, *default:* `nil`) - The requested URL, which may differ from the resolved "id".
  *   `metrics` (*type:* `%{optional(String.t) => GoogleApi.PageSpeedOnline.V5.Model.UserPageLoadMetricV5.t}`, *default:* `nil`) - The map of .
  *   `origin_fallback` (*type:* `boolean()`, *default:* `nil`) - True if the result is an origin fallback from a page, false otherwise.
  *   `overall_category` (*type:* `String.t`, *default:* `nil`) - The human readable speed "category" of the id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :initial_url => String.t(),
          :metrics => %{
            optional(String.t()) => GoogleApi.PageSpeedOnline.V5.Model.UserPageLoadMetricV5.t()
          },
          :origin_fallback => boolean(),
          :overall_category => String.t()
        }

  field(:id)
  field(:initial_url)
  field(:metrics, as: GoogleApi.PageSpeedOnline.V5.Model.UserPageLoadMetricV5, type: :map)
  field(:origin_fallback)
  field(:overall_category)
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V5.Model.PagespeedApiLoadingExperienceV5 do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V5.Model.PagespeedApiLoadingExperienceV5.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V5.Model.PagespeedApiLoadingExperienceV5 do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
