class PagesController < ApplicationController
  def home
    @calendar = Product.find_by(name: 'maxi calendrier')
    @order = Order.new
  end

  def styles
  end

  def mentions_legales

  end
end
