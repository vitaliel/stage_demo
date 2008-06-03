# $Id: user_environment.rb 1 2008-01-22 10:49:13Z vitaliel $
module UserSystem
  CONFIG = {
    # Source address for user emails
    :email_from => 'info@assembla.com',

    # Destination email for system errors
    :admin_email => 'info@assembla.com',

    #No-reply email address
    :no_reply_email => 'noreply@assembla.com',
    
    # Sent in emails to users
    :app_url => 'http://localhost:3000/',

    # Sent in emails to users
    :app_name => 'tutorials',

    # Email charset
    :mail_charset => 'utf-8',

    #leave below option last
    1 => 1
  }
end

local_conf = File.join(File.dirname(__FILE__), 'local_conf.rb')

if ENV['RAILS_ENV'] != 'test' && FileTest.exists?(local_conf)
  require local_conf
end
