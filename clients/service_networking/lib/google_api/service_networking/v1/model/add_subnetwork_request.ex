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

defmodule GoogleApi.ServiceNetworking.V1.Model.AddSubnetworkRequest do
  @moduledoc """
  Request to create a subnetwork in a previously peered service network.

  ## Attributes

  *   `consumer` (*type:* `String.t`, *default:* `nil`) - Required. A resource that represents the service consumer, such as `projects/123456`. The project number can be different from the value in the consumer network parameter. For example, the network might be part of a Shared VPC network. In those cases, Service Networking validates that this resource belongs to that Shared VPC.
  *   `consumerNetwork` (*type:* `String.t`, *default:* `nil`) - Required. The name of the service consumer's VPC network. The network must have an existing private connection that was provisioned through the connections.create method. The name must be in the following format: `projects/{project}/global/networks/{network}`, where {project} is a project number, such as `12345`. {network} is the name of a VPC network in the project.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the subnet.
  *   `ipPrefixLength` (*type:* `integer()`, *default:* `nil`) - Required. The prefix length of the subnet's IP address range. Use CIDR range notation, such as `30` to provision a subnet with an `x.x.x.x/30` CIDR range. The IP address range is drawn from a pool of available ranges in the service consumer's allocated range.
  *   `region` (*type:* `String.t`, *default:* `nil`) - Required. The name of a [region](/compute/docs/regions-zones) for the subnet, such `europe-west1`.
  *   `requestedAddress` (*type:* `String.t`, *default:* `nil`) - Optional. The starting address of a range. The address must be a valid IPv4 address in the x.x.x.x format. This value combined with the IP prefix range is the CIDR range for the subnet. The range must be within the allocated range that is assigned to the private connection. If the CIDR range isn't available, the call fails.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - Required. A name for the new subnet. For information about the naming requirements, see [subnetwork](/compute/docs/reference/rest/v1/subnetworks) in the Compute API documentation.
  *   `subnetworkUsers` (*type:* `list(String.t)`, *default:* `nil`) - A list of members that are granted the `compute.networkUser` role on the subnet.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumer => String.t(),
          :consumerNetwork => String.t(),
          :description => String.t(),
          :ipPrefixLength => integer(),
          :region => String.t(),
          :requestedAddress => String.t(),
          :subnetwork => String.t(),
          :subnetworkUsers => list(String.t())
        }

  field(:consumer)
  field(:consumerNetwork)
  field(:description)
  field(:ipPrefixLength)
  field(:region)
  field(:requestedAddress)
  field(:subnetwork)
  field(:subnetworkUsers, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.AddSubnetworkRequest do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.AddSubnetworkRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.AddSubnetworkRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
