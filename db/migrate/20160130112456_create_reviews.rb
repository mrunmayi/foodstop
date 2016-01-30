class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :user
      t.text :comment
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
