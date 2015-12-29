class Collection < ActiveRecord::Base
  has_many :factories
  has_many :worksheets
end
