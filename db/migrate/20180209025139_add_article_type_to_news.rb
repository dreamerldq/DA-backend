class AddArticleTypeToNews < ActiveRecord::Migration[5.1]
  def change
    add_column :news, :articleType, :string
  end
end
