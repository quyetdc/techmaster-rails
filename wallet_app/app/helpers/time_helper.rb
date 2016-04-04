module TimeHelper
  def months_until_now
    month_names = {
        '1': 'Jan',
        '2': 'Feb',
        '3': 'Mar',
        '4': 'Apr',
        '5': 'May',
        '6': 'Jun',
        '7': 'Jul',
        '8': 'Aug',
        '9': 'Sep',
        '10': 'Oct',
        '11': 'Nov',
        '12': 'Dec'
    }

    current_month = Time.now.month

    (1..current_month).to_a.map { |mn| month_names[:"#{mn}"]}
  end

  def format_date date
    date.strftime("%Y-%b-%d")
  end
end