class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.time :opens_at
      t.time :closes_at
      t.integer :weekday
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
