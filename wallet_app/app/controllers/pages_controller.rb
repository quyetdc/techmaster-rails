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

  def dashboard
    return redirect_to root_path if params[:month].to_i == 0

    session[:wl_month] = params[:month]
    session[:wl_year] = params[:year]

    current_month = Date.today.month
    months_ago = (Date.today.year - params[:year].to_i ) * 12 + current_month - params[:month].to_i

    first_moment_of_month = Date.today.months_ago(months_ago).beginning_of_month
    last_moment_of_month = Date.today.months_ago(months_ago).end_of_month

    _ics = Income.joins(:categories)
               .where('incomes.issued_at > ? AND incomes.issued_at < ?', first_moment_of_month, last_moment_of_month)
               .select('categories.name as category_name, incomes.amount as income_amount')
               .group('categories.name')
               .sum('incomes.amount')

    # binding.pry
    # { next: 1000, shopping: 1000 }

    data = []

    _ics.each do |key, value|
      data << { name: key, y: value }
    end

    if data.count > 0
      @incomes_chart = LazyHighCharts::HighChart.new('pie') do |f|
        f.title(text: "Your Finance in #{params[:month]}, #{params[:year]}")
        f.series(name: "Incomes", data: data)

        f.legend(align: 'right', verticalAlign: 'top', y: 75, x: -50, layout: 'vertical')
        f.chart({defaultSeriesType: "pie"})
      end
    end

    render :welcome
  end

end