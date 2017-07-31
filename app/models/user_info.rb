class UserInfo < ActiveRecord::Base
    
 def  self . search ( search ) 
   where("aa LIKE ?", "%#{search}%" )  
   where("school_name LIKE ?", "%#{search}%" ) 
 end 
   
end
 