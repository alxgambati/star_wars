class AddPlanetToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_reference :characters, :planet, null: false, foreign_key: true
  end
end
