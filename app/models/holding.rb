class Holding < ApplicationRecord
  belongs_to :issue
  belongs_to :owner
end
