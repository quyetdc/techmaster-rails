module TimeHelper
  MONTHS_NAMES = {
      :'1' => 'Jan',
      :'2' => 'Feb',
      :'3' => 'Mar',
      :'4' => 'Apr',
      :'5' => 'May',
      :'6' => 'Jun',
      :'7' => 'Jul',
      :'8' => 'Aug',
      :'9' => 'Sep',
      :'10' => 'Oct',
      :'11' => 'Nov',
      :'12' => 'Dec'
  }

  def months_until_now
    current_month = Time.now.month

    (1..current_month).to_a.map { |mn| MONTHS_NAMES[:"#{mn}"]}
  end

  def format_date date
    date.strftime("%Y-%b-%d")
  end

  def months_of_year year
    if Time.now.year == year
      current_month = Time.now.month
      (1..current_month).to_a
    else
      (1..12).to_a
    end
  end

  def select_options_for_months months
    results = []
    months.each do |m|
      results << [MONTHS_NAMES[:"#{m}"], m]
    end

    results
  end

  def start_of_month(month, year)
    current_month = Date.today.month
    months_ago = (Date.today.year - year ) * 12 + current_month - month

    Date.today.months_ago(months_ago).beginning_of_month
  end

  def end_of_month(month, year)
    current_month = Date.today.month
    months_ago = (Date.today.year - year ) * 12 + current_month - month

    Date.today.months_ago(months_ago).end_of_month
  end
end