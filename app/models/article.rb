class Article < ApplicationRecord

    has_many :comments, dependent: :destroy;

    # Validation of POST requests made to this model
    validates :title, presence: true, length: {minimum:5};
end
