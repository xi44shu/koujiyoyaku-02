class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.date :scheduled_date,        null: false
      t.integer :time_zone_id,       null: false
      t.time :start_time,            null: false
      t.string :area,                null: false
      t.integer :size_id,            null: false
      t.integer :accuracy_id,        null: false
      # t.references :team,            null: false, foreign_key: true
      t.references :user,            null: false, foreign_key: true
      # t.references :trading_company,              foreign_key: true
      # t.references :prime_contractor,             foreign_key: true
      # t.references :detail,                       foreign_key: true
      # t.references :public_utility,               foreign_key: true
      # t.references :s_comment,                    foreign_key: true
      t.text :content      
      
      
      t.timestamps
    end
  end
end
