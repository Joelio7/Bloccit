if Rails.env.development?
   ActionMailer::Base.delivery_method = :smtp
   ActionMailer::Base.smtp_settings = {
     address:        'smtp.sendgrid.net',
     port:           '2525',
     authentication: :plain,
     user_name:      'joel.scalera@gmail.com',
     password:       "Yardyear92",
     domain:         'heroku.com',
     enable_starttls_auto: true
   }
 end
