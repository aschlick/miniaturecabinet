class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::Whitelist

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :jwt_authenticatable, :registerable, :recoverable, :rememberable,
         :validatable, :confirmable, :trackable, jwt_revocation_strategy: self
end
