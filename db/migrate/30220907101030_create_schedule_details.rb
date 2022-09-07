class CreateScheduleDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :schedule_details do |t|
      t.references :schedule,   null:false, foreign_key: true
      t.references :detail,   null:false, foreign_key: true
      t.timestamps
    end
  end
end
