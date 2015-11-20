class News < ActiveRecord::Base
  resourcify
  has_many :comments
end
