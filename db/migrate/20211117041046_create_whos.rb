class CreateWhos < ActiveRecord::Migration[6.1]
  def change
    create_table :whos do |t|
      t.string :content

      t.timestamps
    end
  end
end
