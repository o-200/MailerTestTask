class ResumeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.resume_mailer.sendresume.subject
  #
  def sendresume

    @receiver = params[:receiver]

    mail(
      to: @receiver,
      object: "Backend Ruby on Rails разработчик"
     )
  end
end
