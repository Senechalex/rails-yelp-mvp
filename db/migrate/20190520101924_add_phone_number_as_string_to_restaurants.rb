class AddPhoneNumberAsStringToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :phonenumber, :string
  end
end
