class CreateUserTests < ActiveRecord::Migration
  def change
    create_table :user_tests do |t|
      t.references :user, index: true, foreign_key: true
      t.references :test, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
