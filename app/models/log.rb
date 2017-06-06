class Log < ApplicationRecord
  validates :what, :when, :where, :done, presence: true
  validates_uniqueness_of :what, scope: [:when, :where, :done]

end
