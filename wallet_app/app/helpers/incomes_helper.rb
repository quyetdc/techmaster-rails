module IncomesHelper
  def month_incomes month
    current_month = Date.today.month
    first_day_of_month = Date.today.months_ago(current_month - month).beginning_of_month
    last_day_of_month = Date.today.months_ago(current_month - month).end_of_month

    Income.where("? < issued_at AND issued_at < ?", first_day_of_month, last_day_of_month).sum(:amount)
  end

  def months_incomes months
    months.map { |m| month_incomes m }
  end
end
