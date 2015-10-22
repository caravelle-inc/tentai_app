# Preview all emails at http://localhost:3000/rails/mailers/item_contact_mailer
class ItemContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/item_contact_mailer/item_contact_mail
  def item_contact_mail
    ItemContactMailer.item_contact_mail
  end

end
