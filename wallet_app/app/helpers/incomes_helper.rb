module IncomesHelper
  include TimeHelper

  def month_incomes month, year = Date.today.year
    current_month = Date.today.month
    months_ago = (Date.today.year - year ) * 12 + current_month - month
    first_day_of_month = Date.today.months_ago(months_ago).beginning_of_month
    last_day_of_month = Date.today.months_ago(months_ago).end_of_month

    Income.where("? < issued_at AND issued_at < ?", first_day_of_month, last_day_of_month)
  end

  def months_incomes months
    months.map { |m| (month_incomes m).sum(:amount) }
  end

  def month_income_data month, year
    first_moment_of_month = start_of_month month, year
    last_moment_of_month = end_of_month month, year

    _ics = Income.joins(:categories)
               .where('incomes.issued_at > ? AND incomes.issued_at < ?', first_moment_of_month, last_moment_of_month)
               .group('categories.name')
               .sum('incomes.amount')


    data = []

    _ics.each do |key, value|
      data << { name: key, y: value }
    end

    data
  end

  def month_income_piechart month, year
    data = month_income_data month, year

    if data.count > 0
      incomes_chart = LazyHighCharts::HighChart.new('pie') do |f|
        f.title(text: "Your Incomes in #{month}, #{year}")
        f.series(name: "Incomes", data: data)

        f.legend(align: 'right', verticalAlign: 'top', y: 75, x: -50, layout: 'vertical')
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
