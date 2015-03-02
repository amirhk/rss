# require 'rss_mailer.rb'

namespace :rss_tasks do
  task :send_email => :environment do
    @users = User.all

    @users.map do |u|
      RssMailer.test_email(u).deliver_now
    end
  end

  task :update_rates => :environment do
    rate_CAD = JSON.parse(open("http://rate-exchange.appspot.com/currency?from=USD&to=CAD").read)["rate"]
    rate_EUR = JSON.parse(open("http://rate-exchange.appspot.com/currency?from=USD&to=EUR").read)["rate"]
    rate_IRR = JSON.parse(open("http://rate-exchange.appspot.com/currency?from=USD&to=IRR").read)["rate"]

    @rate = Rate.create! :USDtoCAD => rate_CAD, :USDtoEUR => rate_EUR, :USDtoIRR => rate_IRR

    if !@rate.save
      puts 'error saving..'
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