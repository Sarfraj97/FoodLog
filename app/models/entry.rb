class Entry < ApplicationRecord
 resourcify
 belongs_to :user
 
 scope :todays_entry, -> {where(created_at: Date.today.all_day)}
 #scope :user_entry, -> {where(user_id: params[:id])}
 

 def day 
    self.created_at.strftime("%b %e, %Y")
 end	

end
