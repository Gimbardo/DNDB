class CreateWhies < ActiveRecord::Migration[6.1]
  def change
    create_table :whies do |t|
      t.string :content

      t.timestamps
    end
  end
end
