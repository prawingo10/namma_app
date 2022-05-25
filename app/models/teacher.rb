class Teacher < ApplicationRecord
    
    has_many :students
    validates :name, presence: true, 
               uniqueness: { case_sensitive: false }, 
               length: {minimum:3, maximum:30}
    validates :subject, presence: true, 
               uniqueness: { case_sensitive: false }, 
               length: { minimum:3, maximum: 30}
               

end
