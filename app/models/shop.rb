class Shop < ApplicationRecord
  include ScheduleHelper

  validates :name, presence: true

  has_many :schedules, dependent: :destroy
  accepts_nested_attributes_for :schedules, allow_destroy: true

  def schedules_order_by_today
    days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
    day_offset = days.index(Time.zone.now.strftime("%A")) + 1
    schedules.order(Arel.sql("(weekday - #{day_offset} + 7) % 7"))
  end
end
