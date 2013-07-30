# app/models/post.rb
class Post
  attr_accessor :blog, :title, :body
  def publish
    blog.add_entry(self)
  end
end
