require 'action_mailer'
require 'postmark'

ActionMailer::Base.add_delivery_method :postmark, Mail::Postmark,
  :api_key => nil