class Feedback < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, format: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/
  validates :body, presence: true
end
