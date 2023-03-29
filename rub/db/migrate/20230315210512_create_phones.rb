class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :marca
      t.string :color
      t.string :modelo

      t.timestamps
    end
  end
end
