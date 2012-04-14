class Account < ActiveRecord::Base
  has_paper_trail
  has_many :bookmarks
  has_many :outgoing_shares, :class_name => 'Share', :foreign_key => 'shared_by_id'
  has_many :outgoing_bookmarks, :class_name => 'Bookmark', :through => :outgoing_shares
  has_many :incoming_shares, :class_name => 'Share', :foreign_key => 'shared_with_id'
  has_many :incoming_bookmarks, :class_name => 'Bookmark', :through => :incoming_shares
end
