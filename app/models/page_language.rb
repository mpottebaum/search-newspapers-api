class PageLanguage < ApplicationRecord
    belongs_to :language
    belongs_to :page
end
