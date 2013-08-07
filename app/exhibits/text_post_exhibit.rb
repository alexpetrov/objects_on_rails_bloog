# exhibits/text_post_exhibit.rb
require_relative 'exhibit'
require_relative '../models/post'

class TextPostExhibit < Exhibit

  def render_body
    @context.render(partial: "/posts/text_body", locals: {post: self})
  end

  def self.applicable_to?(object)
    Rails.logger.debug("Issue #1: Heisenbug debug info: object.class == #{object.class}; object.is_a?(Post) == #{object.is_a?(Post)}")
    object.is_a?(Post) &&
    (!(object.picture?))
  end
end
