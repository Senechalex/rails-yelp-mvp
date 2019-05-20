class AddPhoneNumberToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :phonenumber, :integer
  end
end
