class AddFieldsToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :city, :string
    add_column :profiles, :province, :string
    add_column :profiles, :postal_code, :string
    add_column :profiles, :birthday, :date
  end
end
