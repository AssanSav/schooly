class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :image
      t.string :password_digest
      t.string :department
      t.boolean :admin, :default => false 

      t.timestamps
    end
  end
end
