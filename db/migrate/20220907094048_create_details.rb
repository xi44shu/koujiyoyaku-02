class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.string :pipe_type, null: false
      t.integer :pipe_size, null: false

      t.timestamps
    end
  end
end
