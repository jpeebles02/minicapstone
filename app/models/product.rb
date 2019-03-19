class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length:{in: 1..50}
  validates :price, presence: true
  validates :price, numericality: true
  validates :price, numericality: {greater_than: 0}
  validates :rating, presence: true
  validates :rating, numericality: {greater_than: 0}
  validates :rating, numericality: true
  validates :description, presence: true
  validates :description, length:{in: 2..500}
  # validates :image_url, presence: true
  validates :number_of_products, presence: true

  # has_many :orders

  has_many :carted_products

  has_many :category_products
  
  has_many :categories, through: :category_products

  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end
  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  
  def is_discounted?
    price <= 10
    # if price <= 10
    #   return true 
    # else
    #   return false
    # end
  end

  def tax
    return price * 0.09
  end

  def total
    return tax + price
  end

  def holiday_discount
    return total / 2
  end

  def product_stock_avalibility
    # if number_of_products > 0
    if number_of_products >= 1
      return true
    else
      return false
    end
  end

end
