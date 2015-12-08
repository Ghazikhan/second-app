class JobMailer < ApplicationMailer

  def job_confirmation(job, edu, user)
    @user = user
    @education = edu
    @job = job
    mail to: user.email, subject: "New #{job.work_field.field_name} Job", from: "Pak Apply"
  end
end
