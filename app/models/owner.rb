class Owner < ApplicationRecord
  has_many :holdings,  -> { order(:portfoliopercent => :desc).limit(25) }

  def self.all_cached
    Rails.cache.fetch('Owner.all') { all }
  end

end
