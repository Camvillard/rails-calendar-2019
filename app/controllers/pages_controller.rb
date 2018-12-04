class PagesController < ApplicationController
  def home
    @calendar = Product.find_by(name: 'maxi calendrier')
  end

  def styles

  end
end
