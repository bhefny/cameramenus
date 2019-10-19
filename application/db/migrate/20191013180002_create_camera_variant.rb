class CreateCameraVariant < ActiveRecord::Migration[5.2]
  def change
    create_table :variants do |t|
      t.integer :brand_id
      t.string :title
    end
  end
end
