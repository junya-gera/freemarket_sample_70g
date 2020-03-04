class Item < ApplicationRecord
  validates :name, :price, :size, :status, :fee, :region, :shipping_date, presence: true

  def when_item_sold_out(item)
    if item.blank?
      "売り切れです"
    # else 
    #   # item.image
    #   item.name 
    #   item.price
    #   item.status
    end
  end
end
