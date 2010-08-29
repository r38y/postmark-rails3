require 'action_mailer'
require 'postmark'
require 'mail/postmark'

ActionMailer::Base.add_delivery_method :postmark, Mail::Postmrk,
  :api_key => nil