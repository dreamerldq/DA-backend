class CreateProfessions < ActiveRecord::Migration[5.1]
  def change
    create_table :professions do |t|
      t.string :professionName
      t.text :professionIntroduction
      t.text :trainingPositioning
      t.text :faculty
      t.text :professionalAdvantage
      t.text :professionalFeatures

      t.timestamps
    end
  end
end
