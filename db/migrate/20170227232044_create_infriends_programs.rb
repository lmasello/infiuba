class CreateInfriendsPrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :infriends_programs do |t|
      t.string :title
      t.text :short_description
      t.text :large_description
      t.text :message

      t.timestamps
    end
  end
end
