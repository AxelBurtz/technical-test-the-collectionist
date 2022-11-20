class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.time :opens_at_morning
      t.time :closes_at_morning
      t.time :opens_at_afternoon
      t.time :closes_at_afternoon
      t.integer :weekday
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
