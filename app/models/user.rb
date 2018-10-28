class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  field :email, type: String
  field :password_digest, type: String

  has_secure_password validations: false

  before_validation { self.email = email.to_s.downcase }

  validates :password, length: { minimum: 6, maximum: 72 },
                       allow_nil: true, allow_blank: false
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
