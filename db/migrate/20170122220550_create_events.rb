class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :date, null: false
      t.string :url, null: false
      t.string :name, null: false
      t.string :image_url, null: false
      t.text :details, null: false

      t.timestamps
    end
  end
end
