class UserInfo < ActiveRecord::Base
    
   
    def self.search(search)
      where("aa LIKE ?", "%#{search}%") 
    end
end
 