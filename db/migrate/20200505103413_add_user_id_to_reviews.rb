class AddUserIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :user_id, :integer, after: :product_id
  end
end
