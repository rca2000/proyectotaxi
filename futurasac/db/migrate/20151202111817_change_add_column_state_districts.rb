class ChangeAddColumnStateDistricts < ActiveRecord::Migration
  def change
    remove_column :districts, :status, :string
    add_column :districts, :state, :boolean
  end
end
