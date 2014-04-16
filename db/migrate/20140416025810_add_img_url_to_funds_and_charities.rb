class AddImgUrlToFundsAndCharities < ActiveRecord::Migration
  def change
    add_column :funds, :img_url, :string
    add_column :charities, :img_url, :string
  end
end
