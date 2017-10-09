class CreateFish < ActiveRecord::Migration[5.1]
  def change
    create_table :fish do |t|
      t.string :name
      t.references :bear
      t.timestamps
    end
  end
end
