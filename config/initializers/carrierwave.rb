# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.storage = :aws                       # required
  config.aws_bucket = ENV["AWS_BUCKET"]
  config.aws_acl = "public-read"


  config.aws_credentials = {                      
    access_key_id:     ENV["AWS_ACCESS_KEY"],        # required
    secret_access_key: ENV["AWS_SECRET_KEY"],
    region:            ENV["AWS_REGION"]              # required
  }
end








#If you see an error message that begins Errno::ETXTBSY in Instructor::LessonsController#create "Text file busy" and you are running Vagrant on a Windows Computer, a small change will help resolve the errors. Open config/intializers/carrierwave.rb and update the code to be as follows:

#if Rails.env.development?
  #config.cache_dir = '/home/vagrant/uploads_tmp/tmp/uploads'
  #config.root = '/home/vagrant/uploads_tmp/tmp'
#end