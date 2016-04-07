module CostsHelper
  include TimeHelper

  def month_costs month
    current_month = Date.today.month
    first_day_of_month = Date.today.months_ago(current_month - month).beginning_of_month
    last_day_of_month = Date.today.months_ago(current_month - month).end_of_month

    Cost.where("? < issued_at AND issued_at < ?", first_day_of_month, last_day_of_month).sum(:amount)
  end

  def months_costs months
    months.map { |m| month_costs m }
  end

  def month_costs_data month, year
    first_moment_of_month = start_of_month month, year
    last_moment_of_month = end_of_month month, year

    _cs = Cost.joins(:categories)
              .where('costs.issued_at > ? AND costs.issued_at < ?', first_moment_of_month, last_moment_of_month)
              .group('categories.name')
              .sum('costs.amount')


    data = []

    _cs.each do |key, value|
      data << { name: key, y: value }
    end

    data
  end

  def month_costs_piechart month, year
    data = month_costs_data month, year

    if data.count > 0
      incomes_chart = LazyHighCharts::HighChart.new('pie') do |f|
        f.title(text: "Your Costs in #{month}, #{year}")
        f.series(name: "Costs", data: data)

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

    incomes_chart
  end
end
