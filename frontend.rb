require "http"
require "tty-table"

response = HTTP.get("http://localhost:3000/api/all_products_url")
puts "response is"
pp response

products = response.parse

pp products

headers = ['name','price','description','rating']
rows = []
products.each do |product|
  rows << [product["name"], product["price"], product["description"], product["rating"]]
end
table = TTY::Table.new headers, rows
puts table.render(:ascii)
