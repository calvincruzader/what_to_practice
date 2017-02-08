class Song < ApplicationRecord

  validates :name, presence: true
  attr_accessor :collection, :type, :key, :rcm_grade, :henle_grade, :abrsm_grade

  belongs_to :composer
end
