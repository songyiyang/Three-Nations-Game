class AddPropertyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :property, :text
  end
end
