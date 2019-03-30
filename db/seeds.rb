# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# THIS STUFF IS FOR THE SUPPLIER MODEL
Supplier.create!({name: "nike", email: "nike@gmail.com", phone_number: "3126667777"})
Supplier.create!({name: "addidas", email: "addidas@gmail.com", phone_number: "3124445555"})

#THIS STUFF IS FOR THE PRODUCT MODEL
Product.create!({name: "Basketball", price: 10, description: "orange ball with black lining", rating: 5, number_of_products: 5, supplier_id: 2})
Product.create!({name: "Football Ball", price: 8, description: "brown ball with white stitches", rating: 5, number_of_products: 5, supplier_id: 1})
Product.create!({name: "Soccer Ball", price: 10, description: "black and white spotted ball", rating: 5, number_of_products: 5, supplier_id: 1})
Product.create!({name: "Tennis Ball", price: 5, description: "green ball", rating: 5, number_of_products: 5, supplier_id: 2})
Product.create!({name: "Baseball Ball", price: 5, description: "white ball with red stitches", rating: 5, number_of_products: 5, supplier_id: 2})
Product.create!({name: "Basketball Shoes", price: 5, description: "athletic shoes for basketball", rating: 5, number_of_products: 0, supplier_id: 2})
Product.create!({name: "Football Helmet", price: 5, description: "a hard hat that protects an athletes head while playing football", rating: 5, number_of_products: 10, supplier_id: 1})
Product.create!({name: "Soccer Cleats", price: 5, description: "athletic shoes for soccer", rating: 5, number_of_products: 10, supplier_id: 1})

#THIS STUFF IS FOR THE IMAGE MODEL
Image.create!({url: "https://media.giphy.com/media/3oEdv5e5Zd2gsczAhG/giphy.gif", product_id: 1})
Image.create!({url: "https://www.spalding.com/dw/image/v2/ABAH_PRD/on/demandware.static/-/Sites-masterCatalog_SPALDING/default/dw95a24138/images/hi-res/Spalding-Digital-Assets_4384.png?sw=555&sh=689&sm=cut", product_id: 1})
Image.create!({url: "https://media.giphy.com/media/g4S27ejXVeB9kjbgcw/giphy.gif", product_id: 2})
Image.create!({url: "https://m.media-amazon.com/images/S/aplus-media/vc/6b8776c4-606e-49d6-a226-b426aef94799.jpg", product_id: 2})
Image.create!({url: "https://media.giphy.com/media/VssQBjM31vQgo/giphy.gif", product_id: 3})
Image.create!({url: "https://www.balloonsandweights.com/wp-content/uploads/2014/10/Mini-Foam-Soccer-Ball-Back-Side-BalloonsAndWeights.com_.jpg", product_id: 3})
Image.create!({url: "https://media.giphy.com/media/TLfoCeYbqhyjC/giphy.gif", product_id: 4})
Image.create!({url: "https://images-na.ssl-images-amazon.com/images/I/61oT0J2ipHL._SL1000_.jpg", product_id: 4})
Image.create!({url: "https://media.giphy.com/media/l0HlIJQUdby5FzlZe/giphy.gif", product_id: 5})
Image.create!({url: "https://pbs.twimg.com/profile_images/976648863099641858/pNOSI0wz_400x400.jpg", product_id: 5})
Image.create!({url: "http://www.usnewmall.com/image/cache/data/NIKE/KDXI/22-Nike-Zoom-KD-XI-Mens-Basketball-shoes-750x500.jpeg", product_id: 6})
Image.create!({url: "https://www.withsneaker.com/wp-content/uploads/2018/05/Mens-Nike-Kyrie-4-BHM-Multi-Color-Equality-Basketball-Shoes.jpg", product_id: 6})
Image.create!({url: "https://cdn.shopify.com/s/files/1/0211/9828/products/Chicago_Bears_Riddell_Revolution_Speed_Authentic_Football_Helmet_large@2x.jpg?v=1522959650", product_id: 7})
Image.create!({url: "https://i1.wp.com/www.soccercleats101.com/wp-content/uploads/2018/09/Jordan-x-PSG-x-Nike-PhantomVSN.jpg", product_id: 8})

# fake Category info
Category.create!({name: "Basketball Stuff"})
Category.create!({name: "Football Stuff"})
Category.create!({name: "Baseball Stuff"})
Category.create!({name: "Athletic Shoes"})
Category.create!({name: "Athletic Ball"})
Category.create!({name: "Tennis Stuff"})
Category.create!({name: "Soccer Stuff"})
Category.create!({name: "Protective Gear"})

# fake CategoryProduct info
CategoryProduct.create!({category_id: 1, product_id: 1})
CategoryProduct.create!({category_id: 5, product_id: 2})
CategoryProduct.create!({category_id: 2, product_id: 2})
CategoryProduct.create!({category_id: 5, product_id: 2})
CategoryProduct.create!({category_id: 7, product_id: 3})
CategoryProduct.create!({category_id: 5, product_id: 3})
CategoryProduct.create!({category_id: 6, product_id: 4})
CategoryProduct.create!({category_id: 5, product_id: 4})
CategoryProduct.create!({category_id: 3, product_id: 5})
CategoryProduct.create!({category_id: 5, product_id: 5})
CategoryProduct.create!({category_id: 1, product_id: 6})
CategoryProduct.create!({category_id: 4, product_id: 6})
CategoryProduct.create!({category_id: 2, product_id: 7})
CategoryProduct.create!({category_id: 8, product_id: 7})
CategoryProduct.create!({category_id: 7, product_id: 8})
CategoryProduct.create!({category_id: 4, product_id: 8})



#FOR UPDATING A COLUMN 
# Product.all.each { |product| product.update("PUT YOUR COLUMN NAME HERE" => 1) unless product.COLUMN_NAME }