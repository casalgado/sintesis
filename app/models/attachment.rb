class Attachment < ApplicationRecord
  has_one :entry
  has_one :source
end
