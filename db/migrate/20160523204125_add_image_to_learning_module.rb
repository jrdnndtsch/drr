class AddImageToLearningModule < ActiveRecord::Migration
  def up
     add_attachment :learning_modules, :image
  end

  def down
     remove_attachment :learning_modules, :image
  end
end
