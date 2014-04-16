class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :name
      t.string :description
      t.integer :balance
    end
  end
end
