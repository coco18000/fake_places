class Event < ActiveRecord::Base
    belomgs_to :user
    has_many :place
    
    validates :user_id,     presence: true,
                            numericality: {only_integer:true}
    validates :place_id,    presence: true,
                            numericality: {only_integer:true}
    validates :start_time,  presence: true
    validates :end_time,    presence: true
end
