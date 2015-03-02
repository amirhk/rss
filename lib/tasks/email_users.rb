require 'rss_mailer.rb'

@users = Users.all

@users do |u|
  test_email u
end