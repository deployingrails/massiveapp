# # START:require
# require 'cap_gun'
# # END:require
# 
# # START:smtp
# set :cap_gun_action_mailer_config, {
#   :address => "smtp.gmail.com",
#   :port => 587,
#   :user_name => "[YOUR_USERNAME]@gmail.com",
#   :password => "[YOUR_PASSWORD]",
#   :authentication => :plain
# }
# # END:smtp
# 
# # START:envelope
# set :cap_gun_email_envelope, {
#   :from => "deploy@massiveapp.com",
#   :recipients => %w{me@massiveapp.com coworker@massiveapp.com},
#   :prefix => "massiveapp deployed: "
# }
# # END:envelope
# 
# # START:hook
# after "deploy:restart", "cap_gun:email"
# # END:hook
