class Author < ActiveRecord::Base
    validates :name, length: { minimum: 2 }
    validates :phone_number, length: { is: 10 }
    validates :email, uniqueness: true
end
