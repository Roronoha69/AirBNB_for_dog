class Stroll < ApplicationRecord
  belongs_to :dogsitter, optional: true
  belongs_to :dog, optional: true
end
