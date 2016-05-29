class AddRoleToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :role, :string
  end
end
