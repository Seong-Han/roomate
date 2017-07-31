class MypageController < ApplicationController
  #마이페이지 첫화면
  def index
  end
  
  #성향 만들기
  def create
    somethihg = UserInfo.new
    somethihg.aa = params[:a]
    somethihg.save
    redirect_to '/mypage/index'
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
end
