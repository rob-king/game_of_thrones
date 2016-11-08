class AddHouseToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :references, :house
  end
end
