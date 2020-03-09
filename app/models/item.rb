class Item < ApplicationRecord
  validates :name, :price, :size, :status, :fee, :region, :shipping_date, presence: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  enum status:{
    新品、未使用: 0, 
    未使用に近い: 1,
    目立った傷や汚れなし: 2,
    やや傷や汚れあり: 3,
    傷や汚れあり: 4,
    全体的に状態が悪い: 5
  }

  enum fee:{
    送料込み（出品者負担）: 0,
    着払い（購入者負担）: 1
  }

  enum shipping_date:{
    "1~2日で発送": 0,
    "2~3日で発送": 1,
    "4~7日で発送": 2
  }

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
