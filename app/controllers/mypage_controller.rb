class MypageController < ApplicationController
  #마이페이지 첫화면
  def index
  end
  
  #성향 만들기
  def create
    something = UserInfo.new
    something.aa = params[:a]
    something.category = params[:category]
    something.school_name = params[:school]
    something.user_id = current_user.id
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
  
  def result
    @result=UserInfo.all
  end
end
