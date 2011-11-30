class StudySession < ActiveRecord::Base
  belongs_to :project_instance
  belongs_to :location
end
