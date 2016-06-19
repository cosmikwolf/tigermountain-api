class Owner < ApplicationRecord
  has_many :holdings
  def self.all_cached
    Rails.cache.fetch('Owner.all') { all }
  end

end
