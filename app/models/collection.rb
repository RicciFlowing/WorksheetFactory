class Collection < ActiveRecord::Base
  belongs_to :factory
  has_many :worksheets
end
