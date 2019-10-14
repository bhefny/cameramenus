class CreateCameraSoftware < ActiveRecord::Migration[6.0]
  def change
    create_table :softwares do |t|
      t.integer :variant_id
      t.string :title
      t.text :menu_markup
    end
  end
end
