class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  enum gender: { male: 0, female: 1 }
end
