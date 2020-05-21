# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create(name: 'Fashion')
Category.create(name: 'Electronics')
Category.create(name: 'Furniture')
Category.create(name: 'Games')
Category.create(name: 'Hobbies')
Category.create(name: 'Automotives')
Category.create(name: 'Others')

Listing.create(title: 'Random Item 1', price: '$238', image_url: 'https://i.picsum.photos/id/126/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 1)
Listing.create(title: 'Random Item 2', price: '$38', image_url: 'https://i.picsum.photos/id/226/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 2)
Listing.create(title: 'Random Item 3', price: '$18', image_url: 'https://i.picsum.photos/id/326/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 3)
Listing.create(title: 'Random Item 4', price: '$48.50', image_url: 'https://i.picsum.photos/id/426/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 4)
Listing.create(title: 'Random Item 5', price: '$99', image_url: 'https://i.picsum.photos/id/526/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 5)
Listing.create(title: 'Random Item 6', price: '$120', image_url: 'https://i.picsum.photos/id/626/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 6)
Listing.create(title: 'Random Item 7', price: '$1400', image_url: 'https://i.picsum.photos/id/726/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 7)
Listing.create(title: 'Random Item 8', price: '$20', image_url: 'https://i.picsum.photos/id/826/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 7)
Listing.create(title: 'Random Item 9', price: '$45', image_url: 'https://i.picsum.photos/id/926/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 7)
Listing.create(title: 'Random Item 10', price: '$94', image_url: 'https://i.picsum.photos/id/921/300/400.jpg', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quis ipsa officiis saepe illum perspiciatis a similique suscipit pariatur assumenda facere iste ad consequuntur fugit iure quos minus unde recusandae.', user_id: 1, category_id: 7)
