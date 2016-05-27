class AddColumnsToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :retailer, :string
    add_column :profiles, :store_number, :string
    add_column :profiles, :store_name, :string
    add_column :profiles, :years_experience, :integer
    add_column :profiles, :skin_concern, :string
    add_column :profiles, :email_list, :boolean
    add_column :profiles, :terms, :boolean
  end
end
