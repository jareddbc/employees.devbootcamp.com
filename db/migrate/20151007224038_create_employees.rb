class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name,                 null: false
      t.string :email_local_part
      t.boolean :employed
      # t.references :hardwares, index: true, foreign_key: true
      # t.references :softwares, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :employees, :email_local_part, unique: true
  end
end
