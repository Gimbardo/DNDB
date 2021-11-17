class CreateWhats < ActiveRecord::Migration[6.1]
  def change
    create_table :whats do |t|
      t.string :content

      t.timestamps
    end
  end
end
