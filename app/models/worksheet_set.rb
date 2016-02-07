class WorksheetSet < ActiveRecord::Base
  belongs_to :factory
  belongs_to :group
end
