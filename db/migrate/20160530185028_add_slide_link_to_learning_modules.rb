class AddSlideLinkToLearningModules < ActiveRecord::Migration
  def change
    add_column :learning_modules, :slide_link, :string
  end
end
