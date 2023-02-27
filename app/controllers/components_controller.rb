class ComponentsController < ApplicationController
  def home
  end

  def index
    @components = Component.all().order(id: :desc).page params[:page]
  end

  def show

  end
  
end
