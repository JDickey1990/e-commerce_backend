class Product < ApplicationRecord
    has_many :orders_product
    has_many :orders, through: :orders_product, dependent: :destroy

    accepts_nested_attributes_for :orders
end
