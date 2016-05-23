class AddImageAndPdfToSkinDiets < ActiveRecord::Migration
  def up
     add_attachment :skin_diets, :image
     add_attachment :skin_diets, :pdf
  end

  def down
     remove_attachment :skin_diets, :image
     remove_attachment :skin_diets, :pdf
  end
end
