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

defmodule GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage do
  @moduledoc """
  Holds one or more instances of `ClaimReview` markup for a webpage.

  ## Attributes

  *   `claimReviewAuthor` (*type:* `GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor.t`, *default:* `nil`) - Info about the author of this claim review.
      Similar to the above, semantically these are page-level fields, and each
      `ClaimReview` on this page will contain the same values.
  *   `claimReviewMarkups` (*type:* `list(GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup.t)`, *default:* `nil`) - A list of individual claim reviews for this page.
      Each item in the list corresponds to one `ClaimReview` element.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of this `ClaimReview` markup page resource, in the form of
      `pages/{page_id}`. Except for update requests, this field is output-only
      and should not be set by the user.
  *   `pageUrl` (*type:* `String.t`, *default:* `nil`) - The URL of the page associated with this `ClaimReview` markup.
      While every individual `ClaimReview` has its own URL field, semantically
      this is a page-level field, and each `ClaimReview` on this page will use
      this value unless individually overridden.<br>
      Corresponds to `ClaimReview.url`
  *   `publishDate` (*type:* `String.t`, *default:* `nil`) - The date when the fact check was published.
      Similar to the URL, semantically this is a page-level field, and each
      `ClaimReview` on this page will contain the same value.<br>
      Corresponds to `ClaimReview.datePublished`
  *   `versionId` (*type:* `String.t`, *default:* `nil`) - The version ID for this markup. Except for update requests, this field is
      output-only and should not be set by the user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :claimReviewAuthor =>
            GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor.t(),
          :claimReviewMarkups =>
            list(
              GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup.t()
            ),
          :name => String.t(),
          :pageUrl => String.t(),
          :publishDate => String.t(),
          :versionId => String.t()
        }

  field(:claimReviewAuthor,
    as:
      GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
  )

  field(:claimReviewMarkups,
    as:
      GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup,
    type: :list
  )

  field(:name)
  field(:pageUrl)
  field(:publishDate)
  field(:versionId)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage do
  def decode(value, options) do
    GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
