class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :codes do |t|
      t.string :post_image_id
      t.text :text
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
