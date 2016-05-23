class CreateSkinDiets < ActiveRecord::Migration
  def change
    create_table :skin_diets do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
