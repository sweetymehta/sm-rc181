class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.references :user

      t.timestamps
    end
    add_index :comments, :user_id
  end
end
