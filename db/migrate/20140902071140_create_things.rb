class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.string :description
      t.integer :creator_id
      t.string :creator_type
      t.integer :type_id

      t.timestamps
    end
  end
end
