class FavoriteRoute < ActiveRecord::Base
    belongs_to :user
    belongs_to :route
end
