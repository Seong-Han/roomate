class UploadController < ApplicationController
def profile
end

def write
end

def create
    uploader = AvatarUploader.new
    my_file = params[:img_src]
    uploader.store!(my_file)


    post = Post.new
    post.text_save = params[:short_text]
    post.img_src = uploader.url
    post.save

    redirect_to "/upload/write"
end

end
