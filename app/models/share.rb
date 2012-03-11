class Share < ActiveRecord::Base
  belongs_to :bookmark
  belongs_to :shared_by, :class_name => 'Account'
  belongs_to :shared_with, :class_name => 'Account'
end
