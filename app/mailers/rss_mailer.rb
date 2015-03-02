class RssMailer < ApplicationMailer
  def test_email user
    # puts "#{user.inspect}"
    @user = user
    @time_period = "hour"
    mail to: @user.email, subject: "Personlized #{@time_period.capitalize}ly RSS Feed."
  end
  # def test_email
  #   # puts "#{user.inspect}"
  #   @user = User.new
  #   @user.name = "Amir"
  #   @time_period = "hour"
  #   mail to: "amirhkarimi+test@gmail.com", subject: "Personlized #{@time_period.capitalize}ly RSS Feed."
  # end
  # def test_puts
  #   puts 'test complete, works!'
  # end
end
