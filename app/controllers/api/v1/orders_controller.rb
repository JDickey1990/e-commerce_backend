require 'pry'
class Api::V1::OrdersController < ApplicationController

    def create
        order = Order.create(order_params)
        products = params[:products_attributes]
        
      
        products.each do |prod|
            product =Product.find_by(id: prod[:id])
            order.products << product
        end

        render json: order, include: [:products] 
    end

    def index
        orders = Order.all
        render json: orders, include: [:products] 
    end

    private

    def order_params
        params.require(:order).permit(
                :subtotal,
                :tax,
                :total,
                products_attributes:[
                        :id,
                        :model,
                        :img,
                        :price,
                        :company,
                        :collection,
                        :info,
                        :inCart,
                        :count,
                        :total
                ] 
            
            )
    end

 
end

