class ChangeAddColumnStatusDistricts < ActiveRecord::Migration
  def change
    remove_column :districts, :state, :string
    add_column :districts, :status, :boolean
  end
end
