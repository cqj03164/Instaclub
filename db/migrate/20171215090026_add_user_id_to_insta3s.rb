class AddUserIdToInsta3s < ActiveRecord::Migration
  def change
    add_column :insta3s, :user_id, :integer
  end
end
