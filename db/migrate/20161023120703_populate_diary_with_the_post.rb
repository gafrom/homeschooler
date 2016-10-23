class PopulateDiaryWithThePost < ActiveRecord::Migration[5.0]
  def up
    Post.create body: 'This is the very beginning...'
  end

  def down
    Post.delete_all
  end
end
