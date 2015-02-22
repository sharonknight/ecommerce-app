class MakeProductIdInteger < ActiveRecord::Migration
  def change
  	change_column :product_options, :product_id, :integer
  end
end
