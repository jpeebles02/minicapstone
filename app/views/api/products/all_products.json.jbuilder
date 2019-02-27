json.array! @products.each do |products|
  json.name products.name
  json.price products.price
  json.description products.description
  json.rating products.rating
end

