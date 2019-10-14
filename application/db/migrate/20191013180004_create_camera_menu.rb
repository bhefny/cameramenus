class CreateCameraMenu < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.integer :software_id
      t.integer :parent_menu_id
      t.string :title
      t.integer :level
    end
  end
end
