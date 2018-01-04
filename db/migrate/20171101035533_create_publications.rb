class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.string :link

      t.timestamps null: false
    end
  end
end
