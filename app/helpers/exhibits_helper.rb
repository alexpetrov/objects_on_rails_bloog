# app/helpers/exhibits_helper.rb
require_relative '../exhibits/exhibit.rb'

module ExhibitsHelper
  def exhibit(model, context)
    Exhibit.exhibit(model, context)
  end
end
