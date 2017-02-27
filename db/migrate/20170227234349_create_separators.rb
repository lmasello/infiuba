class CreateSeparators < ActiveRecord::Migration[5.0]
  def change
    create_table :separators do |t|
      t.text :description

      t.timestamps
    end
  end
end
