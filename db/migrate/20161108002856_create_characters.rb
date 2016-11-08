class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.text :name
      t.text :gender
      t.text :culture
      t.text :born
      t.text :died
      t.text :title
      t.text :alias
      t.timestamps
    end
  end
end
