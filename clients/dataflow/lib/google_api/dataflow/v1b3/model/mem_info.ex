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

defmodule GoogleApi.Dataflow.V1b3.Model.MemInfo do
  @moduledoc """
  Information about the memory usage of a worker or a container within a
  worker.

  ## Attributes

  *   `currentLimitBytes` (*type:* `String.t`, *default:* `nil`) - Instantenous memory limit in bytes.
  *   `currentRssBytes` (*type:* `String.t`, *default:* `nil`) - Instantenous memory (RSS) size in bytes.
  *   `timestamp` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp of the measurement.
  *   `totalGbMs` (*type:* `String.t`, *default:* `nil`) - Total memory (RSS) usage since start up in GB * ms.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentLimitBytes => String.t(),
          :currentRssBytes => String.t(),
          :timestamp => DateTime.t(),
          :totalGbMs => String.t()
        }

  field(:currentLimitBytes)
  field(:currentRssBytes)
  field(:timestamp, as: DateTime)
  field(:totalGbMs)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.MemInfo do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.MemInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.MemInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end