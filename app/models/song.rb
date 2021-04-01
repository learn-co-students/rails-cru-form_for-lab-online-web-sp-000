class Song < ApplicationRecord
    belongs_to :artist 
    belongs_to :genre 

    def genre_name
        self.genre.name
    end
    
end
