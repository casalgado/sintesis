class EntriesController < ApplicationController
  def index
  end

  def show
  	@entry = Entry.find(params[:id])
  	@attachments = @entry.attachments
    source = Source.find(params[:source_id])
    @entry_type = Medium.find(Entry.first.source.medium_id).media
  end

  def edit
  end

  def update
  end
end
