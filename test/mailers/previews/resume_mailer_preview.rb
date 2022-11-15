# Preview all emails at http://localhost:3000/rails/mailers/resume_mailer
class ResumeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/resume_mailer/sendresume
  def sendresume
    ResumeMailer.with(receiver: @receiver).sendresume
  end

end
