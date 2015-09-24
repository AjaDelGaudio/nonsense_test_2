class Question < ActiveRecord::Base
  has_one :choice

  validates :number, presence: true
  validates :number, numericality: { only_integer: true }

  validates :text, presence: true

  validates_inclusion_of :multiple_choice, in: [true, false]
end
