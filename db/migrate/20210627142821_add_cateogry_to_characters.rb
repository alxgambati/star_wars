class AddCateogryToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_reference :characters, :category, null: false, foreign_key: true
  end
end
