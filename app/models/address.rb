class Address < ActiveRecord::Base

    belongs_to :user
    belongs_to :country
    has_many   :orders
end
