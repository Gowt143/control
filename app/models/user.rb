class User < ApplicationRecord
    validates :name, :email, :phone, :password, presence: true
    validates :password, :email, :phone, uniqueness: true
    validates :phone, length: { is: 10 }
end
