class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.references :listing, foreign_key: true
    end
  end
end
