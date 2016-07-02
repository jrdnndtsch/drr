class AddCtaToLearningModules < ActiveRecord::Migration
  def change
    add_column :learning_modules, :cta, :string
  end
end
