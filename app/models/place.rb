class Place < ActiveRecord::Base
    belongs_to :user
    belongs_to ;place
    
    validates :user_id,     presence: true,
                            numericality: {only_integer:true}
    validates :name,        presence: true,
                            length: {maximum: 255}
    validates :longitude,   presence: true
    validates :latitude,    presence: true
end
