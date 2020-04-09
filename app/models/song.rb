class Song < ActiveRecord::Base 
    validates :title, presence: true
    validates :released, presence: true 
    validates :release_year, presence: true, if: :released?
    validates :release_year, numericality: { less_than: Date.current.year}
    validates :artist_name, presence: true 
end 