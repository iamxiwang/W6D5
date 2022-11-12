# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'action_view'

class Cat <ApplicationRecord
    include ActionView::Helpers::DateHelper
    

    CAT_COLORS = ["black", "white", "orange","red", "grey", "tan", "mixture" ]
    validates :birth_date, :color, :name, :sex, presence: true
    validate  :birth_date_cannot_be_future
    validates :color, inclusion: {in: CAT_COLORS}
    validates :sex, inclusion: {in: %w(M F)}

    # rails will auto value birth_date = self.birth_date. auto set up attr_acessor  
    
    def birth_date_cannot_be_future 
        if  birth_date > Date.today
            errors.add(:birth_date, "birth date can not be future")
        end
    end

    def age
        time_ago_in_words(birth_date)
    end


    
end
