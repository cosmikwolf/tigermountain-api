class Holding < ApplicationRecord
  belongs_to :issue
  belongs_to :owner

  def self.all_cached
    Rails.cache.fetch('Holding.all') { all }
  end

end
