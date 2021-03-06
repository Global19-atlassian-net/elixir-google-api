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

defmodule GoogleApi.Dataflow.V1b3.Model.WorkItemServiceState do
  @moduledoc """
  The Dataflow service's idea of the current state of a WorkItem being processed by a worker.

  ## Attributes

  *   `completeWorkStatus` (*type:* `GoogleApi.Dataflow.V1b3.Model.Status.t`, *default:* `nil`) - If set, a request to complete the work item with the given status. This will not be set to OK, unless supported by the specific kind of WorkItem. It can be used for the backend to indicate a WorkItem must terminate, e.g., for aborting work.
  *   `harnessData` (*type:* `map()`, *default:* `nil`) - Other data returned by the service, specific to the particular worker harness.
  *   `hotKeyDetection` (*type:* `GoogleApi.Dataflow.V1b3.Model.HotKeyDetection.t`, *default:* `nil`) - A hot key is a symptom of poor data distribution in which there are enough elements mapped to a single key to impact pipeline performance. When present, this field includes metadata associated with any hot key.
  *   `leaseExpireTime` (*type:* `DateTime.t`, *default:* `nil`) - Time at which the current lease will expire.
  *   `metricShortId` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.MetricShortId.t)`, *default:* `nil`) - The short ids that workers should use in subsequent metric updates. Workers should strive to use short ids whenever possible, but it is ok to request the short_id again if a worker lost track of it (e.g. if the worker is recovering from a crash). NOTE: it is possible that the response may have short ids for a subset of the metrics.
  *   `nextReportIndex` (*type:* `String.t`, *default:* `nil`) - The index value to use for the next report sent by the worker. Note: If the report call fails for whatever reason, the worker should reuse this index for subsequent report attempts.
  *   `reportStatusInterval` (*type:* `String.t`, *default:* `nil`) - New recommended reporting interval.
  *   `splitRequest` (*type:* `GoogleApi.Dataflow.V1b3.Model.ApproximateSplitRequest.t`, *default:* `nil`) - The progress point in the WorkItem where the Dataflow service suggests that the worker truncate the task.
  *   `suggestedStopPoint` (*type:* `GoogleApi.Dataflow.V1b3.Model.ApproximateProgress.t`, *default:* `nil`) - DEPRECATED in favor of split_request.
  *   `suggestedStopPosition` (*type:* `GoogleApi.Dataflow.V1b3.Model.Position.t`, *default:* `nil`) - Obsolete, always empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completeWorkStatus => GoogleApi.Dataflow.V1b3.Model.Status.t(),
          :harnessData => map(),
          :hotKeyDetection => GoogleApi.Dataflow.V1b3.Model.HotKeyDetection.t(),
          :leaseExpireTime => DateTime.t(),
          :metricShortId => list(GoogleApi.Dataflow.V1b3.Model.MetricShortId.t()),
          :nextReportIndex => String.t(),
          :reportStatusInterval => String.t(),
          :splitRequest => GoogleApi.Dataflow.V1b3.Model.ApproximateSplitRequest.t(),
          :suggestedStopPoint => GoogleApi.Dataflow.V1b3.Model.ApproximateProgress.t(),
          :suggestedStopPosition => GoogleApi.Dataflow.V1b3.Model.Position.t()
        }

  field(:completeWorkStatus, as: GoogleApi.Dataflow.V1b3.Model.Status)
  field(:harnessData, type: :map)
  field(:hotKeyDetection, as: GoogleApi.Dataflow.V1b3.Model.HotKeyDetection)
  field(:leaseExpireTime, as: DateTime)
  field(:metricShortId, as: GoogleApi.Dataflow.V1b3.Model.MetricShortId, type: :list)
  field(:nextReportIndex)
  field(:reportStatusInterval)
  field(:splitRequest, as: GoogleApi.Dataflow.V1b3.Model.ApproximateSplitRequest)
  field(:suggestedStopPoint, as: GoogleApi.Dataflow.V1b3.Model.ApproximateProgress)
  field(:suggestedStopPosition, as: GoogleApi.Dataflow.V1b3.Model.Position)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.WorkItemServiceState do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.WorkItemServiceState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.WorkItemServiceState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
