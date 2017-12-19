class Friends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :twitter
      t.timestamps null: false
    end
  end
end
