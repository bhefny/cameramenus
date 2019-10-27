class CreateCameraBrand < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :title
    end
  end
end
