class CreateUsers < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
