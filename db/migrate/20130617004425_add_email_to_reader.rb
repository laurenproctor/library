class AddEmailToReader < ActiveRecord::Migration
  def change
    add_column :readers, :email, :string
  end
end
