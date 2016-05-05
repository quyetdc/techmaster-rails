class PagesController < ApplicationController
  before_filter :authenticate_user!

  include CategoriesHelper

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

    # binding.pry
    # { next: 1000, shopping: 1000 }

    @incomes_chart = month_income_piechart params[:month].to_i, params[:year].to_i
    @costs_chart = month_costs_piechart params[:month].to_i, params[:year].to_i
    @categories_chart = month_categories_piechart params[:month].to_i, params[:year].to_i

    render :welcome
  end

end