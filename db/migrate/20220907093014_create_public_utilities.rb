class CreatePublicUtilities < ActiveRecord::Migration[6.0]
  def change
    create_table :public_utilities do |t|
      t.string :pu_name,           null:false
      # t.string :pc_address,        null:false
      # 事業体の情報は追記できる,ここで管理するより会社のDBから取得できる方がいい。
      # t.references :pc_specification,        null:false, foreign_key: true
      # 仕様は専用のデータベースを参照する方が良さそう。カラム名に仕様項目、idと紐付け 
      t.timestamps
    end
  end
end
