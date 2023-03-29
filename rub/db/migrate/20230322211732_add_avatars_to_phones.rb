class AddAvatarsToPhones < ActiveRecord::Migration[6.1]
  def change
    add_column :phones, :avatar, :string
  end
end
