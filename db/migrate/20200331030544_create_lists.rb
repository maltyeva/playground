class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.belongs_to :company, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
