class Composer < ApplicationRecord
  validates :name, presence: true
  has_many :songs
  validates :songs, :length => { :minimum => 1 }
end
