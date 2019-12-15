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

defmodule GoogleApi.ServiceNetworking.V1.Model.RangeReservation do
  @moduledoc """
  Represents a range reservation.

  ## Attributes

  *   `ipPrefixLength` (*type:* `integer()`, *default:* `nil`) - Required. The size of the desired subnet. Use usual CIDR range notation. For example,
      '30' to find unused x.x.x.x/30 CIDR range. The goal is to determine if one
      of the allocated ranges has enough free space for a subnet of the requested
      size.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipPrefixLength => integer()
        }

  field(:ipPrefixLength)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.RangeReservation do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.RangeReservation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.RangeReservation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end