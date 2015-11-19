class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :picture_url
      t.string :title
      t.string :html

      t.timestamps
    end
  end
end
