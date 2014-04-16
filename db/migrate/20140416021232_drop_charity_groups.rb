class DropCharityGroups < ActiveRecord::Migration
  def change
    drop_table :charity_groups
  end
end
