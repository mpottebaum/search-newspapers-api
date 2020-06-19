class Page < ApplicationRecord
    has_many :page_languages
    has_many :languages, through: :page_languages

    def languages_attributes=(langs)
        puts '*****************'
        puts 'languages_attributes='
        langs.each { |lang| languages.find_or_create_by(name: lang[:name]) }
    end
end
