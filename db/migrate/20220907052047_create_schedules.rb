class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.date :scheduled_date,        null: false
      t.integer :time_zone_id,       null: false, foreign_key: true
      t.time :start_time,            null: false
      t.string :area,                null: false
      t.integer :size_id,            null: false, foreign_key: true
      t.integer :accuracy_id,        null: false, foreign_key: true
      t.integer :teams_id,           null: false, foreign_key: true
      t.integer :trading_companys_id,             foreign_key: true
      t.integer :prime_contractors_id,            foreign_key: true
      t.integer :details_id,                      foreign_key: true
      t.integer :users_id,null: false,            foreign_key: true
      t.integer :public_utilitys_id,              foreign_key: true
      t.integer :s_comments_id,                   foreign_key: true
      t.text :content      
      
      
      t.timestamps
    end
  end
end
