class User < ActiveRecord::Base
    #belongs_to :driver
    has_many :services
    has_many :favorite_routes
end
