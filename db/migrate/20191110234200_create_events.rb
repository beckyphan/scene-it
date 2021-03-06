class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :title
      t.time :datetime
      t.text :location
      t.belongs_to :host
      t.belongs_to :movie
      t.timestamps
    end
  end
end
