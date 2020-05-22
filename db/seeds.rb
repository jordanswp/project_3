# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'Admin', email: 'admin@email.com', password: '123456', password_confirmation: '123456')
User.create(username: 'Akira', email: 'akira@email.com', password: '123456', password_confirmation: '123456')
User.create(username: 'Stuart', email: 'Stuart@email.com', password: '123456', password_confirmation: '123456')
User.create(username: 'Ben', email: 'ben@email.com', password: '123456', password_confirmation: '123456')
User.create(username: 'Jessica', email: 'jessica@email.com', password: '123456', password_confirmation: '123456')

Category.create(name: 'Fashion')
Category.create(name: 'Electronics')
Category.create(name: 'Furniture')
Category.create(name: 'Games')
Category.create(name: 'Hobbies')
Category.create(name: 'Automotives')
Category.create(name: 'Others')

Listing.create(title: 'Grey Dress Bought in Korea', price: '$98', image_url: 'https://i.pinimg.com/474x/ef/5a/fe/ef5afea4a71041a581c81ec4d0767ada.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 5, category_id: 1)
Listing.create(title: 'iPhone 6 Mint Condition', price: '$238', image_url: 'https://ic.maxabout.us//gadgets/mobile_phones/apple/apple-iphone-6//Apple_iPhone_6_110914_3.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 4, category_id: 2)
Listing.create(title: 'New and never used Ikea Chair', price: '$18', image_url: 'https://cdn20.pamono.com/p/g/3/2/325012_1o02lvsqca/model-369-chair-by-walter-knoll-1950s-1.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 3, category_id: 3)
Listing.create(title: 'Brand new Minecraft Gift Card', price: '$20.50', image_url: 'https://i.pinimg.com/474x/73/a8/b3/73a8b3499a2dbd5ab824b7ba1ddab9c3.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 2, category_id: 4)
Listing.create(title: 'Grand Piano Excellent Condition', price: '$12999', image_url: 'https://cdn.shopify.com/s/files/1/0172/6126/products/00000_jWY71K0LTUR_1200x900_98c1e86a-b80d-4f7a-bd52-c67ab41ab2d2_300x.jpg?v=1523642045', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 5)
Listing.create(title: 'Audi White Low Mileage No Accident First Owner!', price: '$190000', image_url: 'https://im.vsco.co/1/54c2b2e56cefa2012695/595d69e38f94720173edbd1c/vsco_070517.jpg?w=260', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 2, category_id: 6)
Listing.create(title: 'Mass Tech Protein Powder 3kg', price: '$70', image_url: 'https://gd.image-gmkt.com/li/529/791/1101791529.g_0-w_g.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 3, category_id: 7)

Listing.create(title: 'Fake Van Gogh Painting (Duh) Seems Real!', price: '$99', image_url: 'https://www.jackygallery.com/images/categories/Vincent%20Van%20Gogh%20catetory.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 2, category_id: 7)
Listing.create(title: 'Selling my favorite book', price: '$15', image_url: 'https://images.offerup.com/qk5zhap1ArpYxlEJYhq82e06HDk=/300x400/ba52/ba520f6273524d168df4eb6f0c38a564.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 3, category_id: 7)
Listing.create(title: 'Chanel Parfum 30ml Brand New', price: '$94', image_url: 'https://www.lovehappensmag.com/blog/wp-content/uploads/2018/03/375x500.28711-300x400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 4, category_id: 7)

Listing.create(title: 'Brazilian fashionable dress. Made in Pipa.', price: '$40', image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE0sHGGRkxcH2M2qUf1NhzuXfylLADdO61y-PxH1uUSJTOKv5x9A&s', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 5, category_id: 1)
Listing.create(title: 'Balenciaga Shirt Plain Worn Once', price: '$700', image_url: 'https://secureservercdn.net/160.153.138.163/x0o.f38.myftpupload.com/wp-content/uploads/2020/03/balenciaga-paris-mens-t-shirt-black-1104B-1-300x400.jpeg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 1)
Listing.create(title: 'Green Slip ons from Perennial Boutique', price: '$45', image_url: 'https://perennialboutique.com/wp-content/uploads/IMG_0001-2-300x400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 1)
Listing.create(title: 'Boyce Watch International Brand New', price: '$94', image_url: 'https://boycewatches.com/wp-content/uploads/sites/11/2019/10/America-Series-3-Vertical-Boyce-Watches-300x400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 1)

Listing.create(title: 'Subaru BRZ', price: '$99999', image_url: 'https://wp-vote.net/wp-content/uploads/2016/07/7035546-toyota-sport-car-300x400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 2, category_id: 6)
Listing.create(title: 'Toyota Prius', price: '$80000', image_url: 'https://senbay.lk/wp-content/uploads/classified-listing/2019/07/17-6-300x400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 6)

Listing.create(title: 'Philips X2HR Fidelio Over Ear Headphone, Black', price: '$120', image_url: 'https://images-na.ssl-images-amazon.com/images/I/51QxPYKG3oL._AC_SY400_.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 3, category_id: 2)
Listing.create(title: 'Macbook Pro with Stand', price: '$1020', image_url: 'https://m.media-amazon.com/images/S/aplus-media/vc/0515087a-a8ae-47d8-8fef-cd0722abdb5d.__CR12,0,975,1300_PT0_SX300_V1___.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 4, category_id: 2)

Listing.create(title: 'Old Fashioned Collectors Bike', price: '$110', image_url: 'https://i.picsum.photos/id/146/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 7)
Listing.create(title: 'Antique Car #Farmer Boys', price: '$120000', image_url: 'https://i.picsum.photos/id/111/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 5, category_id: 6)
Listing.create(title: 'Random Item 3', price: '$320', image_url: 'https://i.picsum.photos/id/316/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 5, category_id: 2)

Comment.create(title: 'I want to buy this - Offer', body: 'Hi, I am really interested. Could you let it go for $60? Let me know', listing_id: 1, user_id: 1)
Comment.create(title: 'Could you elaborate on the details please', body: 'What material is it made of? Thanks.', listing_id: 1, user_id: 1)
Comment.create(title: 'I want to buy this - Offer', body: 'Hi, I am really interested. Could you let it go for $60? Let me know', listing_id: 2, user_id: 1)
Comment.create(title: 'Meetup preferred - Offering $30', body: 'How long have you had it?', listing_id: 2, user_id: 1)
Comment.create(title: 'Offer', body: 'This seems really worth it for its price', listing_id: 3, user_id: 1)
Comment.create(title: 'I want to buy this - Offer', body: 'Hi, I am really interested. Could you let it go for $60? Let me know', listing_id: 3, user_id: 1)


##
##
##  Seeds for Chatroom
##
##

#room_id = 1
Room.create(listing_id: 1) 
Room.find(1).users.append(User.find(1))
Room.find(1).users.append(User.find(5))
Message.new(body: 'Hi, this is Admin', room_id: 1, user_id: 1)
Message.new(body: 'Oh hi, this is a reply from Jessica', room_id: 1, user_id: 5)

#room_id = 2
Room.create(listing_id: 2)
Room.find(2).users.append(User.find(1))
Room.find(2).users.append(User.find(4))
Message.new(body: 'Hi Daniel, I am ben. How are you?', room_id: 2, user_id: 4)

#room_id = 3 
Room.create(listing_id: 3)
Room.find(3).users.append(User.find(3))
Room.find(3).users.append(User.find(1))
Message.new(body: 'Hi Daniel, this is Stuart. How are you?', room_id: 3, user_id: 3)






