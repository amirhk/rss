class RssMailer < ApplicationMailer
  def test_email user
    @user = user
    mail to: @user.email, subject: "Personlized RSS Feed."
  end
end
