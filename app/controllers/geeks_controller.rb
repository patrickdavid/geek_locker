class GeeksController < ApplicationController
  before_action :authenticate_user!

  def index
    @geeks = Geek.all
  end

  def new
    @geek = Geek.new
  end

end
