class Book < ActiveRecord::Base
  has_many :comments, as: :review
end
