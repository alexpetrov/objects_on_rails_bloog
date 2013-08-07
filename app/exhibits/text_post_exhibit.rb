# exhibits/text_post_exhibit.rb
require_relative 'exhibit'
require_relative '../models/post'

class TextPostExhibit < Exhibit

  def render_body
    @context.render(partial: "/posts/text_body", locals: {post: self})
  end

  def self.applicable_to?(object)
    Rails.logger.debug("Issue #1: Heisenbug debug info: Object class = #{object.class}; object.kind_of?(Post) = #{object.kind_of?(Post)}; object.is_a?(Post) = #{object.is_a?(Post)}")
    object.kind_of?(Post) &&
    (!(object.picture?))
  end
end
