require 'JSON'
require 'open-uri'

if ENV["RAILS_ENV"] != :production

  @u1 = User.create! :name => "Amir1", :email => "amirhkarimi+1@gmail.com", :notify_usd_to_cad => true
  @u2 = User.create! :name => "Amir2", :email => "amirhkarimi+2@gmail.com", :notify_usd_to_cad => false
  @u3 = User.create! :name => "Amir3", :email => "amirhkarimi+3@gmail.com", :notify_usd_to_cad => true

  rate = JSON.parse(open("http://rate-exchange.appspot.com/currency?from=USD&to=CAD").read)["rate"]

  @rate1 = UsdtoCad.create! :USDtoCAD => rate

end