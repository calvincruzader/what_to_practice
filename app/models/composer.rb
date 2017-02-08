class Composer < ApplicationRecord

  validates :name, presence: true

  has_many :song
end
