class Author < ApplicationRecord
    #validate name such that the name cannot be empty or falsy
    validates :name, presence: true, uniqueness: true
    #validate the name such that  the name is case sensitive 
    validates :phone_number, length: {is: 10}
end
