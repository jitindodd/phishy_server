class RemoveTimestampsFromPhishySite < ActiveRecord::Migration[5.1]
  def change
    remove_column :phishy_sites, :created_at, :string
    remove_column :phishy_sites, :updated_at, :string
  end
end
