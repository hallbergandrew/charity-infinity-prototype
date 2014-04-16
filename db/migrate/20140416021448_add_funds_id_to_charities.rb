class AddFundsIdToCharities < ActiveRecord::Migration
  def change
    add_column :charities, :fund_id, :integer
  end
end
