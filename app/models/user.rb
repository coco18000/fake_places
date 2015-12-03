class User < ActiveRecord::Base
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d-]+(\.[a-z]+)*\.[a-z]+\z/i
    
    has_many :event
    has_many :place
    has_secure_password
    
    before_save { self.email = email.downcase }
    before_create :create_remember_token
    
    validates :user_name,       presence: true,
                                length: { maximum: 255 },
                                uniqueness: true
    validates :email,           presence: true,
                                length: { maximum: 255 },
                                uniqueness: true,
                                format: {with: VALID_EMAIL_REGEX }
    validates :password,        presence: true,
                                length: { minimum: 3, maximum: 64 }
    
    def User.new_remember_token
        SecureRandom.urlsafe_base64
    end
    
    def User.encrypt(token)
        Digest::SHA1.hexdigest(token.to_s)
    end
    
    private
    def create_remember_token
        logger.debug(User.new_remember_token)
        self.remember_token = User.encrypt(User.new_remember_token)
    end
end
