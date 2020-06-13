class Folder < ApplicationRecord
    has_many :saved_pages
    has_many :pages, through: :saved_pages
end
