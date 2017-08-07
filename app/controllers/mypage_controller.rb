class MypageController < ApplicationController
  #마이페이지 첫화면
  def index
    @u_info = UserInfo.all
    @school_info = School.all
  end
  
    
  def create
    something = UserInfo.where(:user_id => current_user.id).take
    something.aa = params[:a]
    
    # something.school_name = params[:school]
    # something.gender = params[:gender]
    # something.age = params[:age]
    # something.user_id = current_user.id
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
  
  #기본적인 인적사항 입력하는 창
  def core_index
    
  end
  
  def core_create
    corenew = UserInfo.new
    corenew.user_id = current_user.id
    corenew.gender = params[:gender]
    corenew.age = params[:age]
    corenew.school_name = params[:school]
    corenew.save
    redirect_to '/main/home'
    
    end
    
    def core_edit
      coreedit = UserInfo.where(:user_id => current_user.id).take
      coreedit.gender = params[:gender]
      coreedit.age = params[:age]
      coreedit.school_name = params[:school]
      coreedit.save
      redirect_to "/mypage/index/#{current_user.id}"
    
    end
    
end
