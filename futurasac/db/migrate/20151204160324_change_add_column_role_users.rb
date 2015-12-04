class ChangeAddColumnRoleUsers < ActiveRecord::Migration
  def change
    remove_column :users, :permission_level, :string
    add_column :users, :role, :string, :default => 'passenger'
  end
end
