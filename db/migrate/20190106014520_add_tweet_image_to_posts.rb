class AddTweetImageToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :tweet_image, :string
  end
end
