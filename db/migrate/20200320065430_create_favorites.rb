class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :item
      t.string :references
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end