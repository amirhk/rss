require 'json'
require 'open-uri'

namespace :ball do
  task :sack => :environment do

    rate = JSON.parse(open("http://rate-exchange.appspot.com/currency?from=USD&to=CAD").read)["rate"]

    # qu = Quote.new(:value => rate)

    # if qu.save

    #   qu.email("amir@amir.amir")

    # end

    puts rate

  end
end