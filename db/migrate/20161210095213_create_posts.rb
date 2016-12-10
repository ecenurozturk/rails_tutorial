class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :header
      t.text :text

      t.timestamps
    end
  end
end