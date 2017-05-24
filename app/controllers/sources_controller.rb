class SourcesController < ApplicationController
  def index
  	@user = current_user
  	@sources = current_user.sources
  end

  def show
  end

  def edit
  end

  def update
  end
end
