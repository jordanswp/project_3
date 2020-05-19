class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :image_url
      t.string :price
      t.text :description
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end
