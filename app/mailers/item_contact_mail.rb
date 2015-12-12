class ItemContactMail < ApplicationMailer

  default from: "from@example.com"

  def item_contact_to_user(contact, item)
    @item = item
    @contact = contact
    @greeting = "お問い合わせ確認メール"
    mail to: contact.email, subject: "お問い合わせ完了しました。"
  end

  def item_contact_to_admin(contact, admin)
    @admin = admin
    @contact = contact
    @greeting = "お申し込みの対応をお願いします"
    mail to: contact.email, subject: "お問い合わせが入りました。"
  end
end
