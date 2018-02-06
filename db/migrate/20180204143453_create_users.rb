class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :username
      t.text :password
      t.text :phone
      t.text :name
      t.text :professionalTeam
      t.text :jobTitle
      t.text :education
      t.text :graduatedSchool
      t.text :researchDirection
      t.text :email


      t.timestamps
    end
  end
end
