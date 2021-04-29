class Order < ApplicationRecord
    has_many :orders_product
    has_many :products, through: :orders_product, dependent: :destroy

    accepts_nested_attributes_for :products
   
end
