class User < ApplicationRecord
    has_many :orders

    validates :email, uniqueness: true, presence: true
    validates_presence_of :name
end
