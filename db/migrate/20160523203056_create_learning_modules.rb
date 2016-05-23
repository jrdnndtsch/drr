class CreateLearningModules < ActiveRecord::Migration
  def change
    create_table :learning_modules do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
