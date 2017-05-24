class Source < ApplicationRecord
	has_many :entries
	has_many :attachments
	has_one :medium
	belongs_to :user



	# This class method recieves a major array which contains minor arrays.
	# Minor arrays contain the data to populate database with entries for each source. 
	# Sources must already be created in the database. 
	# There should be one minor array for each source.
	# The minor arrays must be in the order of the sources in the database.
	# 
	# Minor arrays are a list of 'entry date', 'entry content' pairs. 
	# It has only one level, so it must be processed in pairs.
	# For each pair, [0] is the entry date and [1] is the entry content.
	# Each pair is then passed on to the Entry.load method to create the entries.

	def self.load(array)
		array.each do |a|
			source = Source.find(array.index(a) + 1)
			a.each do |pair|
  				Entry.load(source, pair[0], pair[1])
			end
		end
	end

end
