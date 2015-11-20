class Blog < ActiveRecord::Base
  resourcify
  has_many :comments
end
