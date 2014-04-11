class CreateProfilesTable < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    t.column :name, :string
    t.column :street, :string
    t.column :city, :string
    t.column :state, :string
    t.column :zip, :string
    t.column :phone, :string
    end
  end
end
