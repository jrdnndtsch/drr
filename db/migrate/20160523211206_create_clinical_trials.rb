class CreateClinicalTrials < ActiveRecord::Migration
  def change
    create_table :clinical_trials do |t|
      t.string :title
      t.attachment :image
      t.attachment :pdf

      t.timestamps null: false
    end
  end
end
