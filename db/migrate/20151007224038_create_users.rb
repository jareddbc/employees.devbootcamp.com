class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name,                 null: false
      t.string :email_local_part
      t.boolean :employed
      # t.references :hardwares, index: true, foreign_key: true
      # t.references :softwares, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :users, :email_local_part, unique: true
  end
end
