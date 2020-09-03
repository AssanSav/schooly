class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :major
      t.string :department
      t.boolean :admin, :default => false
      t.boolean :teacher, :default => false
      t.boolean :student, :default => false

      t.timestamps
    end
  end
end
