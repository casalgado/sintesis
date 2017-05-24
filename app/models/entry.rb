class Entry < ApplicationRecord
  belongs_to :source
  has_many :attachments
  has_many :tags, through: :entry_tags



  def self.load(source, date, content)
  	if entry = source.entries.find_by(date: date)
  		entry.attachments.create(content: content)
  	else
  		entry = source.entries.create(date: date)
  		entry.attachments.create(content: content)
  	end
  end

  def next(sources)
  	
  end


end
