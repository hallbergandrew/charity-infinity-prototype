class RemoveCharityGroupIdFromCharities < ActiveRecord::Migration
  def change
    remove_column :charities, :charity_group_id
  end
end
