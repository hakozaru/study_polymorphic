class Movie < ActiveRecord::Base
  has_many :comments, as: :review
end
