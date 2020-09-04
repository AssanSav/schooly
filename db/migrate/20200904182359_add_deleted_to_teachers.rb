class AddDeletedToTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :deleted, :boolean, :default => false
  end
end
