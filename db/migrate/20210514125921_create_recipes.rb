class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :ingredients, null: false
      t.text :instruction, null: false
      t.string :image, default: 'https://res.cloudinary.com/dhl1cdqch/image/upload/v1621026603/Sammy_Meal_bvckqd.jpg'
      t.timestamps
    end
  end
end
