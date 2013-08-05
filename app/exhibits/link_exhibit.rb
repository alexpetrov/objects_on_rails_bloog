# app/exhibits/lini_exhibit.rb
require_relative "exhibit.rb"

class LinkExhibit < Exhibit
  def self.applicable_to?(object)
    object.is_a?(Post)
  end
end
