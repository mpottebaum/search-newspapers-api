class SavedPage < ApplicationRecord
    belongs_to :folder
    belongs_to :page
end
