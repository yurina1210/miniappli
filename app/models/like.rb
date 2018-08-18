class Like < ActiveRecord::Base
  belongs_to :blog, counter_cache: :likes_count
end
