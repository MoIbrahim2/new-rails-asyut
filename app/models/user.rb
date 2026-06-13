class User < ApplicationRecord
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: URI::MailTo::EMAIL_REGEXP,
              message: "must be a valid email address"
            }

  validates :password,
            length: { minimum: 6 },
            presence: true,
            if: :password_required?

  validates :name, presence: true
  validates :phone_number, presence: true
end
