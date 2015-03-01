class RssMailer < ApplicationMailer
  def test_email
    @time_period = "hour"
    mail to: "amirh.karimi@utoronto.ca", subject: "Personlized #{@time_period.capitalize}ly RSS Feed."
  end
end
