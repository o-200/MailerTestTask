class ResumeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.resume_mailer.sendresume.subject
  #
  def sendresume

    @sender = params[:sender]
    @receiver = params[:receiver]

    mail(
      to: "omgout200@gmail.com"
     )
  end
end
