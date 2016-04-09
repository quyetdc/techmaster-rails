module CategoriesHelper
  include IncomesHelper
  include CostsHelper

  def month_categories_piechart month, year
    income_data = month_income_data month, year
    cost_data = month_costs_data month, year

    data = []

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

    income_array = data.map {|t| t[:income]}
    cost_array = data.map {|t| t[:cost]}

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
