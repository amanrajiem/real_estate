class VeryLongTaskWorker
  include Sidekiq::Worker

  sidekiq_options :queue => :very_long_task  
  # call this method when you have to perform the very long task
  def perform(asset_type, asset_id)
    sleep 60
    true # the task was completed correctly
    ConfirmationMailer.new.send_mail(asset_type, asset_id)
  end
end