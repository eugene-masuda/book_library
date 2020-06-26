class Book < ApplicationRecord
    has_one_attached :thumbnail
    has_one_attached :pdf_file
    belongs_to :user
    has_many :libraries
    has_many :added_books, through: :libraries, source: :user
end
