class AddColumnSalerToItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :saler, foreign_key: { to_table: :items }
  end
end
