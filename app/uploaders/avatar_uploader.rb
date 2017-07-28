class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  # storage :file
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
   def extension_whitelist
     %w(jpg jpeg gif png)
   end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  def filename      #-> 파일을 something.jpg로 저장하겠다.  덮어쓰기가 되므로 파일은 1개 따라서 이름을 바꿔야함 업로드 되는 시간을 체크해서 이치두를 쓰면 된다.
    Time.now.to_i.to_s  + "." + file.extension  #인티저타입으로 시간을 저장하겠다. 그것을 스트링으로 저장하겠다.  뒤에 확장자를 받아서 저장
   "something.jpg" if original_filename
  end

end
