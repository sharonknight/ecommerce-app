class RemoveVendorFromProduct < ActiveRecord::Migration
  def change
  	change_table :products do |t|
  		t.remove :vendor 
  	end
  end
end
