class CreateGifts < ActiveRecord::Migration[6.1]
  def change
    create_table :gifts do |t|
      t.references :who, null: false, foreign_key: true
      t.references :what, null: false, foreign_key: true
      t.references :why, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
