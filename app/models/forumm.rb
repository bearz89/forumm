class Forumm < ActiveRecord::Base
	has_many :topics, :dependent => :destroy
end
