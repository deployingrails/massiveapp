class Share < ActiveRecord::Base
  belongs_to :bookmark
  belongs_to :shared_by, :class_name => 'User'
  belongs_to :shared_with, :class_name => 'User'
end
