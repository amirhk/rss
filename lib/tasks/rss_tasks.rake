# require 'rss_mailer.rb'

namespace :rss_tasks do
  task :send_email => :environment do
    @users = User.all

    @users.map do |u|
      RssMailer.test_email(u).deliver_now
    end
  end

  task :update_rates => :environment do
    rates = JSON.parse(open("http://api.fixer.io/latest?base=USD").read)["rates"]

    rate_CAD = rates["CAD"]
    rate_EUR = rates["EUR"]
    # rate_IRR = rates["IRR"]

    # @rate = Rate.create! :USDtoCAD => rate_CAD, :USDtoEUR => rate_EUR, :USDtoIRR => rate_IRR
    @rate = Rate.create! :USDtoCAD => rate_CAD, :USDtoEUR => rate_EUR

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