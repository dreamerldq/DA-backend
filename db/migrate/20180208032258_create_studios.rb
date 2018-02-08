class CreateStudios < ActiveRecord::Migration[5.1]
  def change
    create_table :studios do |t|
      t.text :name
      t.text :address
      t.text :introduction
      t.string :principal
      t.string :studioName
      t.text :course
      t.text :research

      t.timestamps
    end
  end
end
