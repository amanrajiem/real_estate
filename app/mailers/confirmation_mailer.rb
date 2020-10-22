class ConfirmationMailer < ApplicationMailer

  def send_mail(asset_type, asset_id)

    recipients = ["owener@example.com", "user@example.com"]
      mail(to: recipients, subject: "Order Confirmation", body: "Order Confirmation.\n Details - \n
        Asset Type: #{asset_type},\n
        Asset Id: #{asset_id},\n
      ")
    end
end
