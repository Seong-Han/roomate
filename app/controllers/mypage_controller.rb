class MypageController < ApplicationController
  #마이페이지 첫화면
  def index
    @u_info = UserInfo.all
    @school_info = School.all
    
    @chat = Conversation.all
      
      if  @chat.where(:sender_id => current_user.id).take.nil?
          @chat1=[]
      else 
          @chat1 = @chat.where(:sender_id => current_user.id)
      end
      
      if @chat.where(:recipient_id => current_user.id).take.nil?
          @chat2=[]
      else 
          @chat2 = @chat.where(:recipient_id => current_user.id)
      end 
  end
  
    
  def create
    something = UserInfo.where(:user_id => current_user.id).take
    something.aa = params[:a]
    something.one_time = true
    something.save
    redirect_to "/mypage/index/#{current_user.id}"
  end
  
  #성향 편집
  def type_update
    something = UserInfo.where(:user_id => current_user.id).take
    something.aa = params[:a]
    something.save
    redirect_to "/mypage/index/#{current_user.id}"
    
  end
  
  def type_edit
    
  end
  
  def type_index
    
  end
  
  def edit
  end
  
  def chat
     @users = User.where(:id => params[:user_id]).take
      
      
         if Conversation.between(current_user.id, params[:user_id]).present?
         
            @conversation = Conversation.between(current_user.id, params[:user_id]).first
             
         else
            @conversation = Conversation.new
            @conversation.sender_id = current_user.id
            @conversation.recipient_id = @users.id 
            @conversation.save
         end
      @conversation = Conversation.between(current_user.id, params[:user_id]).take
      #@id = Conversation.between(current_user.id, params[:user_id]).take.id
      #@message = Message.where(:message_id => @id).take
      @message = @conversation.messages.new(message_params)
      @message.body = params[:body]
      @message.save
      @messages = @conversation.messages
      @messages1 = @messages.where(:user_id => current_user.id) #이게 보낸 메세지
      @messages2 = @messages.where(:user_id => params[:user_id]) #이게 받은 메세지
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
    def core_update
      
    end
    
    
    def core_edit
      coreedit = UserInfo.where(:user_id => current_user.id).take
      coreedit.gender = params[:gender]
      coreedit.age = params[:age]
      coreedit.school_name = params[:school]
      coreedit.save
      redirect_to "/mypage/index/#{current_user.id}"
    
    end
    
  def message
     
         @users = User.where(:id => params[:user_id]).take
         
          # if Conversation.all.where('(sender_id = ? AND  recipient_id= ?) OR (sender_id = ? AND  recipient_id= ?)' , current_user.id, params[:user_id], params[:user_id], current_user.id).nil?
           #where('(conversations.sender_id = ? AND conversations.recipient_id =?) OR (conversations.sender_id = ? AND conversations.recipient_id =?)', sender_id,recipient_id, recipient_id, sender_id)
           #if Conversation.nil?
             # @conversations = Conversation.new 
             # @conversations.sender_id = current_user.id
             # @conversations.recipient_id = @users.id
             # @conversations.save
          # else 
             # @result = Conversation.all.where('(sender_id = ? AND  recipient_id= ?) OR (sender_id = ? AND  recipient_id= ?)', current_user.id, params[:user_id], params[:user_id], current_user.id).take
           #end 
         #redirect_to "/conversation"
         if Conversation.between(current_user.id, params[:user_id]).present?
         
            @conversation = Conversation.between(current_user.id, params[:user_id]).first
             
         else
            @conversation = Conversation.new
            @conversation.sender_id = current_user.id
            @conversation.recipient_id = @users.id 
            @conversation.save
         end
         
         @conversation = Conversation.between(current_user.id, params[:user_id]).take
         
             @message = @conversation.messages.new(message_params)
             @message.body = params[:body]
             @message.user_id = current_user.id
             @message.save
             
             @messages = @conversation.messages
             
             #"orders_count = ?", params[:orders]
             @messages1 = @messages.where(:user_id => current_user.id) #이게 보낸 메세지
             @messages2 = @messages.where(:user_id => params[:user_id]) #이게 받은 메세지
             
             
          
          
         respond_to do |format|
            format.html { redirect_to upload_create_paths }
            format.js
         end
  end
  
  private
     
    def conversation_params
      params.permit(:sender_id, :recipient_id)
    end
    
    def message_params
      params.permit(:body, :user_id)
    end
    
end
