class Language < ApplicationRecord
    has_many :page_languages
    has_many :pages, through: :page_languages
end
