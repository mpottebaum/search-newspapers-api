class Page < ApplicationRecord
    has_many :saved_pages
    has_many :folders, through: :saved_pages
end
