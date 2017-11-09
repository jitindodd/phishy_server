class CreatePhishySites < ActiveRecord::Migration[5.1]
  def change
    create_table :phishy_sites do |t|
      t.string :url
      t.integer :score
      t.string :category

      t.timestamps
    end
  end
end
