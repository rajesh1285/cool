class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
<<<<<<< HEAD
=======

>>>>>>> origin/master
      t.timestamps
    end
  end
end
