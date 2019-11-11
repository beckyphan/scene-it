class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.text :name
      t.integer :year
      t.text :category
      t.text :image_url
      t.timestamps
    end
  end
end
