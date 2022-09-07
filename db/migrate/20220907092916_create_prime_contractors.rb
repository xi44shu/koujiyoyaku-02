class CreatePrimeContractors < ActiveRecord::Migration[6.0]
  def change
    create_table :prime_contractors do |t|
      t.string :pc_name,           null:false
      t.string :pc_contact_person, null:false
      t.string :pc_telephone,      null:false
      t.timestamps
    end
  end
end
