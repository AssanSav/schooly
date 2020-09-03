class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :major
      t.string :department
      t.boolean :admin
      t.boolean :teacher
      t.boolean :student

      t.timestamps
    end
  end
end
