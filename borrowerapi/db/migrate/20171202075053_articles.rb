class Articles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.boolean :available
      t.timestamps null: false
    end
  end
end
