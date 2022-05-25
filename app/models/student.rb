class Student < ApplicationRecord
validates :name, presence: true, length: {minimum: 4,maximum: 15}
validates :subject, presence: true, length: {minimum: 4,maximum: 20}
validates_inclusion_of :age, :in => 18..25
#validates :pet_dog, acceptance: true

#validates :name, format: { with: /[a-z,A-Z,0-9]/, message: "only allow number"}
belongs_to :teacher
end