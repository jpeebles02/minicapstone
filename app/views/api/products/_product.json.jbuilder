json.id product.id
json.name product.name
json.price number_to_currency(product.price)
json.price product.price
json.description product.description
json.the_rating_is product.rating
  # json.the_image_url_is product.image_url
json.is_the_product_discounted? product.is_discounted?
json.the_tax_is number_to_currency(product.tax)
json.the_total_price_is number_to_currency(product.total)
# json.is_product_in_stock product.product_stock_avalibility
json.number_of_products product.number_of_products

json.supplier do 
  json.id product.supplier.id
  json.name product.supplier.name
end

json.images product.images

json.categories product.categories



