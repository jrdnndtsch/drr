class Test < ActiveRecord::Base
  belongs_to :learning_module
  has_many :questions

  has_many :answers, through: :questions
  has_many :user_tests

  # attr_accessible :title, :questions_attributes
  
  accepts_nested_attributes_for :questions, allow_destroy: :true
end
