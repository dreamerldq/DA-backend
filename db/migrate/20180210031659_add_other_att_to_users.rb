class AddOtherAttToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :patent, :text
    add_column :users, :research, :text
    add_column :users, :award, :text
    add_column :users, :studentAward, :text
    add_column :users, :teacherTrainning, :text
  end
end
