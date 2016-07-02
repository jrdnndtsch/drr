class TestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.user_notification.subject
  #
  def user_notification(user)
    @greeting = "Hi"
    @user = user

    mail to: @user.email
  end
end