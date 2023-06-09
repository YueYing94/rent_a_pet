class CreatePetReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_reviews do |t|
      t.text :content
      t.integer :rating
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
