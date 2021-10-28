class Dogsitter < ApplicationRecord
    has_many :strolls
    has_many :dog, through: :stroll
end
 