# require 'rss_mailer.rb'

namespace :amir do
  task :run => :environment do
    @users = User.all

    @users.map do |u|
      RssMailer.test_email(u).deliver_now
    end
  end
end




# rake db:migrate
# rake db:create
# rake db:drop

# namespace :db do
#   task :migrate => :environment do
#   end
#   task :create => :environment do
#   end
#   task :