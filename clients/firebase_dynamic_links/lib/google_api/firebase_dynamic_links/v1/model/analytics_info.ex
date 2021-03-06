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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.AnalyticsInfo do
  @moduledoc """
  Tracking parameters supported by Dynamic Link.

  ## Attributes

  *   `googlePlayAnalytics` (*type:* `GoogleApi.FirebaseDynamicLinks.V1.Model.GooglePlayAnalytics.t`, *default:* `nil`) - Google Play Campaign Measurements.
  *   `itunesConnectAnalytics` (*type:* `GoogleApi.FirebaseDynamicLinks.V1.Model.ITunesConnectAnalytics.t`, *default:* `nil`) - iTunes Connect App Analytics.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :googlePlayAnalytics => GoogleApi.FirebaseDynamicLinks.V1.Model.GooglePlayAnalytics.t(),
          :itunesConnectAnalytics =>
            GoogleApi.FirebaseDynamicLinks.V1.Model.ITunesConnectAnalytics.t()
        }

  field(:googlePlayAnalytics, as: GoogleApi.FirebaseDynamicLinks.V1.Model.GooglePlayAnalytics)

  field(:itunesConnectAnalytics,
    as: GoogleApi.FirebaseDynamicLinks.V1.Model.ITunesConnectAnalytics
  )
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.AnalyticsInfo do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.AnalyticsInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.AnalyticsInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
