class EntriesController < ApplicationController
  def index
  end

  def show
  	@entry = Entry.find(params[:id])
  	@attachments = @entry.attachments
    @active_sources = [1,2,3]
    @entry_type = @entry.type
  end

  def edit
  end

  def update
  end
end
