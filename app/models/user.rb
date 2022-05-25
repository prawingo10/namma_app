class User < ApplicationRecord
   has_many :articles
   validates :username, presence: true, length: { minimum: 6, maximum: 16}
   validates :email, presence: true, length: { minimum: 8, maximum: 30}
<<<<<<< HEAD

end 
=======
has_secure_password
end
>>>>>>> create-association-bw-user-and-articles
