class Test < ActiveRecord::Base
  belongs_to :learning_module
  has_many :questions

  accepts_nested_attributes_for :questions, allow_destroy: :true
end
