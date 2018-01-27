class User < ApplicationRecord
  has_and_belongs_to_many :meetings
  has_many :action_items
  has_many :action_items
  has_many :comments

  has_secure_password
    before_validation :secure_password_digest

  private # if password_digest is blank, create a random password.
  def secure_password_digest
    if password_digest.blank?
      self.password = SecureRandom.urlsafe_base64(16)
    end
  end
end
