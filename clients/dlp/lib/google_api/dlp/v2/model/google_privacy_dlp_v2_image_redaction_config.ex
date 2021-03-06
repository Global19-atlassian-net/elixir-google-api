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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ImageRedactionConfig do
  @moduledoc """
  Configuration for determining how redaction of images should occur.

  ## Attributes

  *   `infoType` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t`, *default:* `nil`) - Only one per info_type should be provided per request. If not specified, and redact_all_text is false, the DLP API will redact all text that it matches against all info_types that are found, but not specified in another ImageRedactionConfig.
  *   `redactAllText` (*type:* `boolean()`, *default:* `nil`) - If true, all text found in the image, regardless whether it matches an info_type, is redacted. Only one should be provided.
  *   `redactionColor` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Color.t`, *default:* `nil`) - The color to use when redacting content from an image. If not specified, the default is black.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :infoType => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t(),
          :redactAllText => boolean(),
          :redactionColor => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Color.t()
        }

  field(:infoType, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType)
  field(:redactAllText)
  field(:redactionColor, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Color)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ImageRedactionConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ImageRedactionConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ImageRedactionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
