class ChangeAddColumnStateDistricts < ActiveRecord::Migration
  def change
    remove_column :users, :permission_level, :string
    add_column :users, :role, :string
  end
end
