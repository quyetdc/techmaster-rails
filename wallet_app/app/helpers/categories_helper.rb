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
      cost_amount = 0

      income_data.each do |_ic_data|
        if _ic_data[:name] == cat
          ic_amount = _ic_data[:y]
          break
        end
      end

      cost_data.each do |c_data|
        if c_data[:name] == cat
          c_amount = c_data[:y]
          break
        end
      end

      data << { name: cat, y: ic_amount - cost_amount }
    end

    # TODO: CHANGE this to column chart
    if data.count > 0
      categories_chart = LazyHighCharts::HighChart.new('pie') do |f|
        f.title(text: "Your Categories Finance in #{month}, #{year}")
        f.series(name: "Category", data: data)

        f.chart({defaultSeriesType: "pie"})
        f.plot_options(:pie=>{
                           :allowPointSelect=>true,
                           :cursor=>"pointer" ,
                           :dataLabels=>{
                               :enabled=>false
                           }
                       })
      end
    end

    categories_chart
  end

end
