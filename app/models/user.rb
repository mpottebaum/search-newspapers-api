class User < ApplicationRecord
    has_many :folders
    has_many :saved_pages, through: :folders
    has_many :pages, through: :saved_pages
end
