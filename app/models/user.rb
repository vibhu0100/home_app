class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
    message: "foloow proper format"}
    validates :email,confirmation: true
    validates :contact, presence: true, length: {is: 10}, numericality: {only_integer: true}
    validates :password, presence: true, length: {minimum: 6}
    
end
