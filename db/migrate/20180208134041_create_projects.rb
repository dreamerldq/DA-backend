class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :projectName
      t.string :projectType
      t.string :instructor
      t.string :businessMentor
      t.string :unit
      t.string :title
      t.string :productDescription
      t.string :productTechnicalLevel
      t.string :noveltyProducts
      t.string :advanced
      t.string :productCompetitive


      t.timestamps
    end
  end
end
