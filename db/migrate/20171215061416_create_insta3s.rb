class CreateInsta3s < ActiveRecord::Migration
  def change
    create_table :insta3s do |t|
      t.string :title
      t.text :content
      t.string :image


      t.timestamps null: false
    end
  end
end
