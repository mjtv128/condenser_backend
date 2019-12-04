class Category < ApplicationRecord
    has_many :articles

    def makeArticles(data) 
        array = []
        data.map do |article|
            hash = {}

        end
    end
end

# make into hash with keys and value

