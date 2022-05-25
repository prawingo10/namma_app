class Article < ApplicationRecord
     belongs_to :user
     validates :name, presence: true,
               length: { minimum: 5, maximun: 40}
     validates :description, presence: true,
                length: { minimum: 5, maximum: 40}
end