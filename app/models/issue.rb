class Issue < ApplicationRecord
  has_many :holdings

  def self.all_cached
    Rails.cache.fetch('Issue.all') { all }
  end

end
