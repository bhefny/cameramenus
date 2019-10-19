class CreateCameraMenu < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.integer :software_id
      t.string :title
      t.integer :level

      t.string :ancestry
    end

    add_index :menus, :ancestry
  end
end
