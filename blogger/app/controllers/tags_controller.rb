class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  before_filter :require_login, only: [:destroy]

  def require_login
    unless current_user
      redirect_to root_path
      return false
    end  
  end
end
