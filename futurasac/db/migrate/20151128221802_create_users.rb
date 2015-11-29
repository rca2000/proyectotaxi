class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :identitydocument
      t.string :email
      t.string :password
      t.date :birthdate
      t.string :type
      t.boolean :status

      t.timestamps null: false
    end
  end
end
