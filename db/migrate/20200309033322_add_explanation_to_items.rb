class AddExplanationToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :detail, :text
  end
end
