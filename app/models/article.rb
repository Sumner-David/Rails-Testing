class Article < ApplicationRecord


    # Validation of POST requests made to this model
    validates :title, presence: true, length: {minimum:5}
end
