class School < ActiveRecord::Base

    def  self . search ( search ) 
        where("school_name LIKE ?", "%#{search}%" ) 
    end 
   
end
