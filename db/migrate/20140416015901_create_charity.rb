class CreateCharity < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.string :description
      t.integer :charity_group_id
    end
  end
end
