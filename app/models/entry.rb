class Entry < ApplicationRecord
  belongs_to :source
  has_many :attachments, dependent: :destroy
  has_many :tags, through: :entry_tags



  def self.load(source, date, content)
  	if entry = source.entries.find_by(date: date)
  		entry.attachments.create(content: content)
  	else
  		entry = source.entries.create(date: date)
  		entry.attachments.create(content: content)
  	end
  end


  # This methods takes in an array of the id's of active sources and finds 
  # entries that belong to them
  def self.active(sources)
    self.where(source_id: sources).order(date: :asc)
  end


  # returns next entry
  def next(sources)
    domain = Entry.active(sources)
    domain[domain.index(self)+1]
  end

  # returns previous entry
  def previous(sources)
    domain = Entry.active(sources)
    domain[domain.index(self)-1]
  end

  # returns type of entry as string
  def type
    Medium.find(self.source.medium_id).media
  end



end
