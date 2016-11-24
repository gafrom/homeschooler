# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string           default(""), not null
#  gender              :integer          default("male"), not null
#  email               :string           default(""), not null
#  encrypted_password  :string           default(""), not null
#  remember_created_at :datetime
#  sign_in_count       :integer          default(0), not null
#  current_sign_in_at  :datetime
#  last_sign_in_at     :datetime
#  current_sign_in_ip  :inet
#  last_sign_in_ip     :inet
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
  has_many :posts
  
  enum gender: { male: 0, female: 1 }

  def name_or_email
    name.blank? ? email : name
  end
end
