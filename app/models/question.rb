class Question < ActiveRecord::Base
  belongs_to :test
  has_many :answers

  # attr_accessible :title, :test_id, :answers_attributes

  accepts_nested_attributes_for :answers, allow_destroy: :true
end
