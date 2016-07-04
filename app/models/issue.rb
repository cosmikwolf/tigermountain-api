class Issue < ApplicationRecord
  has_many :holdings,  -> { order(:sharesheld => :desc) }

  def self.all_cached
    Rails.cache.fetch('Issue.all') { all }
  end

end
