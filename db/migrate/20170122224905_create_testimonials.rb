class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :image_url, null: false
      t.text :message, null: false

      t.timestamps
    end
  end
end
