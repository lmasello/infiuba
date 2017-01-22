class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :name, null: false
      t.string :image_url, null: false
      t.text :details, null: false
      t.timestamps
    end
  end
end
