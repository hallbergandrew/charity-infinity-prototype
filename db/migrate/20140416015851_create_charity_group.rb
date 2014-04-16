class CreateCharityGroup < ActiveRecord::Migration
  def change
    create_table :charity_groups do |t|
      t.string :name
      t.string :description
      t.integer :balance
    end
  end
end
