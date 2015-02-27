User.create!([
  {email: "sharon.e.knight@gmail.com", encrypted_password: "$2a$10$Mca.cAQi5oCm3bueuu3I2eoVmWNjUGJ7tMb64ialbYLWKxVZtN1W2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 8, current_sign_in_at: "2015-02-22 15:21:32", last_sign_in_at: "2015-02-20 01:30:19", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "sknight@gmail.com", encrypted_password: "$2a$10$JHArjkwhwpetAUg/2PsAV.8Dnz87JnJLIlm1qnPOJqtj/I2EZvFVy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-20 02:44:38", last_sign_in_at: "2015-02-20 02:44:38", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Order.create!([
  {product_id: nil, user_id: 3, quantity: 5, product_option_id: nil, subtotal: nil, tax: nil, total: nil},
  {product_id: nil, user_id: 3, quantity: 2, product_option_id: nil, subtotal: nil, tax: nil, total: nil},
  {product_id: nil, user_id: 3, quantity: 20, product_option_id: nil, subtotal: nil, tax: nil, total: nil},
  {product_id: nil, user_id: 4, quantity: 5, product_option_id: nil, subtotal: nil, tax: nil, total: nil},
  {product_id: nil, user_id: 4, quantity: 5, product_option_id: nil, subtotal: nil, tax: nil, total: nil},
  {product_id: nil, user_id: 4, quantity: 20, product_option_id: nil, subtotal: nil, tax: nil, total: nil},
  {product_id: nil, user_id: 4, quantity: 20, product_option_id: nil, subtotal: nil, tax: nil, total: nil},
  {product_id: 2, user_id: 4, quantity: 20, product_option_id: nil, subtotal: nil, tax: nil, total: nil},
  {product_id: 2, user_id: 3, quantity: 2, product_option_id: nil, subtotal: "3.0", tax: "0.27", total: "3.27"},
  {product_id: 1, user_id: 3, quantity: 3, product_option_id: nil, subtotal: "60.0", tax: "5.4", total: "65.4"}
])
Product.create!([
  {price: "20.0", title: "Yellow Yarn", image: "http://img3.etsystatic.com/000/0/5159724/il_fullxfull.341784807.jpg", description: "I am a pretty yellow yarn", category: "Wool", vendor_id: 1},
  {price: "1.5", title: "Red Yarn", image: "http://kimberbaldwindesigns.com/mm5/graphics/00000001/Y-WOR-BATIK-BordelloRed-3.jpg", description: "I am a pretty red yarn.", category: "Alpaca", vendor_id: 1},
  {price: "4.0", title: "Green Yarn", image: "http://www.jimmybeanswool.com/secure-html/productImages/34709Large_e962.jpg", description: "I am a pretty green yarn.", category: "Silk", vendor_id: 1},
  {price: "9.99", title: "Purple Yarn", image: "http://windyvalleymuskox.net/images-pima-cotton-2012/44070-Purple-Petunia.jpg", description: "I am a pretty purple yarn.", category: "Wool", vendor_id: 2}
])
ProductOption.create!([
  {name: "gift wrapped", product_id: 1}
])
Vendor.create!([
  {name: "Rowen", email: "yarn@rowen.com", phone: nil},
  {name: "Lion Brand", email: "yarn@lionbrand.com", phone: nil}
])
