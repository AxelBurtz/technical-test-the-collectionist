class Schedule < ApplicationRecord
  belongs_to :shop

  validates :weekday, presence: true

  def to_weekdays_name
    case weekday
    when 1
      I18n.t('date.day_names')[weekday]
    when 2
      I18n.t('date.day_names')[weekday]
    when 3
      I18n.t('date.day_names')[weekday]
    when 4
      I18n.t('date.day_names')[weekday]
    when 5
      I18n.t('date.day_names')[weekday]
    when 6
      I18n.t('date.day_names')[weekday]
    when 7
      I18n.t('date.day_names')[weekday]
    end
  end
end
