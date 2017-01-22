class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :url
      t.references :activity, index: true, null: false
      t.timestamps
    end
  end
end
