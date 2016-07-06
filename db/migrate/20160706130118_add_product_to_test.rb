class AddProductToTest < ActiveRecord::Migration
  def change
    add_column :tests, :product, :string
  end
end
