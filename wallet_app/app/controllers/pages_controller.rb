class PagesController < ApplicationController
  include IncomesHelper
  include CostsHelper
  include TimeHelper

  def welcome
    current_month = Time.now.month
    this_year_months = months_until_now

    @chart = LazyHighCharts::HighChart.new('graph') do |f|
      f.title(text: "Your Finance This Year")
      f.xAxis(categories: this_year_months)
      f.series(name: "Incomes", data: months_incomes((1..current_month).to_a))
      f.series(name: "Costs", data: months_costs((1..current_month).to_a), color: '#FF0000')

      f.yAxis [
                  {title: {text: "Amount in USD", margin: 70} }
              ]

      f.legend(align: 'right', verticalAlign: 'top', y: 75, x: -50, layout: 'vertical')
      f.chart({defaultSeriesType: "column"})
    end
  end
end