class MainController < ApplicationController
    #메인화면
    
    def home
        
    end
    #방이 있는 사람이 룸메이트 찾는 거
    def haveroom
   
  
        # @search = UserInfo.where("aa LIKE ?", "%#{params[:search]}%")
        # @user = User.all
        # @allsearch = UserInfo.all
        
    #   @posts = Model.all
    #   @books = Book.all
    #else
    #  @posts = Model.where("title LIKE ?", "%#{params[:query]}%")
    # end
        @user = User.all
        @serach = UserInfo.all
        if params[:search]
            @search = UserInfo.search(params[:search]).order("created_at DESC")
        else
            @search = UserInfo.all.order(("created_at DESC"))
        end
    end
    #방이 없는 사람이 방을 찾는 거
    def nhaveroom
    end
    #기숙사 룸메 찾는 거 
    
    def school
        @user = User.all
        @userinfo = UserInfo.all
        
         unless UserInfo.where("school_name LIKE ?", "%#{params[:school]}%").nil? && User.where("gender LIKE ?", "%#{params[:gender]}%").nil?
            @select = UserInfo.search(params[:school]).order("created_at DESC")
         end
            # @select = UserInfo.search(params[:school]).order("created_at DESC") && User.search(params[:gender]).order("created_at DESC") 
    
        
        # @select = UserInfo.where(:school_name => params[:school]).take
        
    end

    
#     def index
#   @recipes = Recipe.all
#   if params[:search]
#     @recipes = Recipe.search(params[:search]).order("created_at DESC")
#   else
#     @recipes = Recipe.all.order("created_at DESC")
#   end
# end
   
end
