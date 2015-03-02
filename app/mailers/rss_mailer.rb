class RssMailer < ApplicationMailer
  def test_email user
    @user = user
    @time_period = "hour"
    mail to: @user.email, subject: "Personlized #{@time_period.capitalize}ly RSS Feed."
  end
end
