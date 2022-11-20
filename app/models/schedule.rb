class Schedule < ApplicationRecord
  belongs_to :shop

  validates :weekday, presence: true

  def to_weekdays_name
    case weekday
    when 1
      'Monday'
    when 2
      'Tuesday'
    when 3
      'Wednesday'
    when 4
      'Thursday'
    when 5
      'Friday'
    when 6
      'Saturday'
    when 7
      'Sunday'
    end
  end
end
