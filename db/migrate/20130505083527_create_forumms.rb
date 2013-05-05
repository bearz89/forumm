class CreateForumms < ActiveRecord::Migration
  def change
    create_table :forumms do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
