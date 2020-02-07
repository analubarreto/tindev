class ProgrammingLanguages < ApplicationRecord
    validates :name, :creator, :release_year, presence: true
end