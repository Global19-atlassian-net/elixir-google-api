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

defmodule GoogleApi.Sheets.V4.Model.ChartSpec do
  @moduledoc """
  The specifications of a chart.

  ## Attributes

  *   `altText` (*type:* `String.t`, *default:* `nil`) - The alternative text that describes the chart.  This is often used
      for accessibility.
  *   `backgroundColor` (*type:* `GoogleApi.Sheets.V4.Model.Color.t`, *default:* `nil`) - The background color of the entire chart.
      Not applicable to Org charts.
  *   `backgroundColorStyle` (*type:* `GoogleApi.Sheets.V4.Model.ColorStyle.t`, *default:* `nil`) - The background color of the entire chart.
      Not applicable to Org charts.
      If background_color is also set, this field takes precedence.
  *   `basicChart` (*type:* `GoogleApi.Sheets.V4.Model.BasicChartSpec.t`, *default:* `nil`) - A basic chart specification, can be one of many kinds of charts.
      See BasicChartType for the list of all
      charts this supports.
  *   `bubbleChart` (*type:* `GoogleApi.Sheets.V4.Model.BubbleChartSpec.t`, *default:* `nil`) - A bubble chart specification.
  *   `candlestickChart` (*type:* `GoogleApi.Sheets.V4.Model.CandlestickChartSpec.t`, *default:* `nil`) - A candlestick chart specification.
  *   `fontName` (*type:* `String.t`, *default:* `nil`) - The name of the font to use by default for all chart text (e.g. title,
      axis labels, legend).  If a font is specified for a specific part of the
      chart it will override this font name.
  *   `hiddenDimensionStrategy` (*type:* `String.t`, *default:* `nil`) - Determines how the charts will use hidden rows or columns.
  *   `histogramChart` (*type:* `GoogleApi.Sheets.V4.Model.HistogramChartSpec.t`, *default:* `nil`) - A histogram chart specification.
  *   `maximized` (*type:* `boolean()`, *default:* `nil`) - True to make a chart fill the entire space in which it's rendered with
      minimum padding.  False to use the default padding.
      (Not applicable to Geo and Org charts.)
  *   `orgChart` (*type:* `GoogleApi.Sheets.V4.Model.OrgChartSpec.t`, *default:* `nil`) - An org chart specification.
  *   `pieChart` (*type:* `GoogleApi.Sheets.V4.Model.PieChartSpec.t`, *default:* `nil`) - A pie chart specification.
  *   `scorecardChart` (*type:* `GoogleApi.Sheets.V4.Model.ScorecardChartSpec.t`, *default:* `nil`) - A scorecard chart specification.
  *   `subtitle` (*type:* `String.t`, *default:* `nil`) - The subtitle of the chart.
  *   `subtitleTextFormat` (*type:* `GoogleApi.Sheets.V4.Model.TextFormat.t`, *default:* `nil`) - The subtitle text format.
      Strikethrough and underline are not supported.
  *   `subtitleTextPosition` (*type:* `GoogleApi.Sheets.V4.Model.TextPosition.t`, *default:* `nil`) - The subtitle text position.
      This field is optional.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the chart.
  *   `titleTextFormat` (*type:* `GoogleApi.Sheets.V4.Model.TextFormat.t`, *default:* `nil`) - The title text format.
      Strikethrough and underline are not supported.
  *   `titleTextPosition` (*type:* `GoogleApi.Sheets.V4.Model.TextPosition.t`, *default:* `nil`) - The title text position.
      This field is optional.
  *   `treemapChart` (*type:* `GoogleApi.Sheets.V4.Model.TreemapChartSpec.t`, *default:* `nil`) - A treemap chart specification.
  *   `waterfallChart` (*type:* `GoogleApi.Sheets.V4.Model.WaterfallChartSpec.t`, *default:* `nil`) - A waterfall chart specification.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :altText => String.t(),
          :backgroundColor => GoogleApi.Sheets.V4.Model.Color.t(),
          :backgroundColorStyle => GoogleApi.Sheets.V4.Model.ColorStyle.t(),
          :basicChart => GoogleApi.Sheets.V4.Model.BasicChartSpec.t(),
          :bubbleChart => GoogleApi.Sheets.V4.Model.BubbleChartSpec.t(),
          :candlestickChart => GoogleApi.Sheets.V4.Model.CandlestickChartSpec.t(),
          :fontName => String.t(),
          :hiddenDimensionStrategy => String.t(),
          :histogramChart => GoogleApi.Sheets.V4.Model.HistogramChartSpec.t(),
          :maximized => boolean(),
          :orgChart => GoogleApi.Sheets.V4.Model.OrgChartSpec.t(),
          :pieChart => GoogleApi.Sheets.V4.Model.PieChartSpec.t(),
          :scorecardChart => GoogleApi.Sheets.V4.Model.ScorecardChartSpec.t(),
          :subtitle => String.t(),
          :subtitleTextFormat => GoogleApi.Sheets.V4.Model.TextFormat.t(),
          :subtitleTextPosition => GoogleApi.Sheets.V4.Model.TextPosition.t(),
          :title => String.t(),
          :titleTextFormat => GoogleApi.Sheets.V4.Model.TextFormat.t(),
          :titleTextPosition => GoogleApi.Sheets.V4.Model.TextPosition.t(),
          :treemapChart => GoogleApi.Sheets.V4.Model.TreemapChartSpec.t(),
          :waterfallChart => GoogleApi.Sheets.V4.Model.WaterfallChartSpec.t()
        }

  field(:altText)
  field(:backgroundColor, as: GoogleApi.Sheets.V4.Model.Color)
  field(:backgroundColorStyle, as: GoogleApi.Sheets.V4.Model.ColorStyle)
  field(:basicChart, as: GoogleApi.Sheets.V4.Model.BasicChartSpec)
  field(:bubbleChart, as: GoogleApi.Sheets.V4.Model.BubbleChartSpec)
  field(:candlestickChart, as: GoogleApi.Sheets.V4.Model.CandlestickChartSpec)
  field(:fontName)
  field(:hiddenDimensionStrategy)
  field(:histogramChart, as: GoogleApi.Sheets.V4.Model.HistogramChartSpec)
  field(:maximized)
  field(:orgChart, as: GoogleApi.Sheets.V4.Model.OrgChartSpec)
  field(:pieChart, as: GoogleApi.Sheets.V4.Model.PieChartSpec)
  field(:scorecardChart, as: GoogleApi.Sheets.V4.Model.ScorecardChartSpec)
  field(:subtitle)
  field(:subtitleTextFormat, as: GoogleApi.Sheets.V4.Model.TextFormat)
  field(:subtitleTextPosition, as: GoogleApi.Sheets.V4.Model.TextPosition)
  field(:title)
  field(:titleTextFormat, as: GoogleApi.Sheets.V4.Model.TextFormat)
  field(:titleTextPosition, as: GoogleApi.Sheets.V4.Model.TextPosition)
  field(:treemapChart, as: GoogleApi.Sheets.V4.Model.TreemapChartSpec)
  field(:waterfallChart, as: GoogleApi.Sheets.V4.Model.WaterfallChartSpec)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ChartSpec do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.ChartSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.ChartSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
