class AddStatusToOrder < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
  		t.column :status, :string
  	end
  end
end
