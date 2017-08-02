class UserInfo < ActiveRecord::Base
    
 def  self . search ( search ) 
   where("aa LIKE ?", "%#{search}%" )  
   where("school_name LIKE ?", "%#{search}%" ) 
 end 
   
 filterrific(
  default_filter_params: { sorted_by: 'created_at_desc' },
  available_filters: [
    :sorted_by,
    :search_query,
    :with_user_id,
    :with_created_at_gte
  ]
)
# define ActiveRecord scopes for
# :search_query, :sorted_by, :with_country_id, and :with_created_at_gte  
   
end
 