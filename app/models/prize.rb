class Prize < ApplicationRecord
    validates :name, presence: true
    validates :key, presence: true
end
