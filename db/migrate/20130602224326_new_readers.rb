class NewReaders < ActiveRecord::Migration
  def change
  	create_table :readers do |t|
  		t.string :email
  		t.timestampss
  	end
  end
end
