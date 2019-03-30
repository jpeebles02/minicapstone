class CartedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :user
  belongs_to :order, optional: true #dont know order Id. only reason to do this 
end
