class Dog < ApplicationRecord
    has_many :strolls
    has_many :dogsitters, through: :stroll
end
 