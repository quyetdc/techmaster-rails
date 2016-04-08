class PagesController < ApplicationController
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

  def month_categories_piechart month, year
    income_data = month_income_data month, year
    cost_data = month_costs_data month, year

    data = []
    income_array = []
    cost_array = []

    categories_names = Category.all.map { |c| c.name }

    categories_names.each do |cat|
      ic_amount = 0
      c_amount = 0

      income_data.each do |_ic_data|
        if _ic_data[:name] == cat
          ic_amount = _ic_data[:y]
          break
        end
      end

      cost_data.each do |_c_data|
        if _c_data[:name] == cat
          c_amount = _c_data[:y]
          break
        end
      end
      data << { name: cat, income: ic_amount, cost: c_amount}
    end

    data.each do |d|
      income_array << d[:income]
      cost_array << d[:cost]
    end

    # TODO: CHANGE this to column chart
    if data.count > 0
      categories_chart = LazyHighCharts::HighChart.new('graph2') do |f|
        f.title(text: "Your Categories Finance in #{month}, #{year}")
        f.xAxis(categories: (Category.all.map { |t| t.name }))
        f.series(name: "Incomes", yAxis: 0, data: income_array)
        f.series(name: "Costs", yAxis: 1, data: cost_array)

        f.yAxis [
                    {title: {text: "Incomes", margin: 70}},
                    {title: {text: "Costs"}, opposite: true},
                ]

        f.legend(align: 'right', verticalAlign: 'top', y: 75, x: -50, layout: 'vertical')
        f.chart({defaultSeriesType: "column"})
      end
    end

    categories_chart
  end
end