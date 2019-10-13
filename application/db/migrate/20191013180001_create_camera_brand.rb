class CreateCameraBrand < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :title
    end
  end
end
