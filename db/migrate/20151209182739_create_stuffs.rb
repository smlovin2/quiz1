class CreateStuffs < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|

      t.string :name
      t.string :quest
      t.string :favorite_color

      t.timestamps
    end
  end
end
