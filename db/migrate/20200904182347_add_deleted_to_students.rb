class AddDeletedToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :deleted, :boolean, :default => false
  end
end
