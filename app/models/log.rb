class Log < ApplicationRecord
  validates :what, :when, :where, :done, presence: true, uniqueness: true
end
