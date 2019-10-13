class CreateCameraVariant < ActiveRecord::Migration[6.0]
  def change
    create_table :camera_variants do |t|
      t.integer :brand_id
      t.string :title
    end
  end
end
