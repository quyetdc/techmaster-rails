module IncomesHelper
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
end
