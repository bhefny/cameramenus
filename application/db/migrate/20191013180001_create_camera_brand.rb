class CreateCameraBrand < ActiveRecord::Migration[6.0]
  def change
    create_table :camera_brands do |t|
      t.string :title
    end
  end
end
