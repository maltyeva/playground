class PagesController < ApplicationController
  def home
    @comments = Comment.all
  end

  def about

  end
end
