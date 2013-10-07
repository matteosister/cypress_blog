class HomepageController < ApplicationController
  def index
    @posts = Post.limit(5).load
  end
end
