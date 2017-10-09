class CreateGoldenBears < ActiveRecord::Migration[5.1]
  def change
    create_table :golden_bears do |t|
      t.string :name
      t.timestamps
    end
  end
end
