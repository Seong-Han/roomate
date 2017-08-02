class MypageController < ApplicationController
  #마이페이지 첫화면
  def index
    @u_info = UserInfo.all
    @school_info = School.all
    
    # if @u_info.where(:user_id => current_user.id).take.one_time.nil
    #   @u_info.where(:user_id => current_user.id).take.one_time = false
    #   @u_info.save
    # end
  end
  
  #성향 만들기
  def school_create
    something = School.new
    something.category = params[:category]
    something.school_name = params[:school]
    something.user_id = current_user.id
    something.one_time = true
    something.save
    redirect_to "/mypage/index/#{current_user.id}"
  end
    
    
  def create
    something = UserInfo.new
    something.aa = params[:a]
    something.category = params[:category]
    something.school_name = params[:school]
    something.user_id = current_user.id
    something.one_time = true
    something.save
    redirect_to "/mypage/index/#{current_user.id}"
  end
  
  #성향 편집
  def edit
  end
  
  #성향지우기
  def delete
  end
  #성향 업데이트
  def update
  end
  
  def profile
    # parsed_db = Noticetitle.where("link" => each_notice.link).take
    newimage = User.where(:id => current_user.id).take
    newimage.image = params[:image]
    newimage.save
    # Post.create(content: params[:content].
    #                     image: params[:image])
    redirect_to :back
  end
  
  def result
    @result=UserInfo.all
  end
end
