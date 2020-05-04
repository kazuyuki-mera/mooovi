class AddColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :director, :string, after: :image_url
    add_column :products, :detail, :text, after: :director
    add_column :products, :open_date, :string, after: :detail
  end
end
