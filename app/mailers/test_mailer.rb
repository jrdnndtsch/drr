class TestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.user_notification.subject
  #
  def user_notification(user)
    @greeting = "Hi"
    @user = user
    if @user.profile
      @username = "#{user.profile.first_name}  #{user.profile.last_name}"
    else
      @username = user.email
    end
    mail to: @user.email, subject: "Thank you for completing this module!"
  end

end