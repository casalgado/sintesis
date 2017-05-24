class Tag < ApplicationRecord
	has_many :entries, through: :entry_tags
end
