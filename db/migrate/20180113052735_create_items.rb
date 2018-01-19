class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.text :item_name
      t.text :image_id
      t.integer :user_id

      t.timestamps
    end
  end
end
