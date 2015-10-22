require 'test_helper'

class ItemContactMailerTest < ActionMailer::TestCase
  test "item_contact_mail" do
    mail = ItemContactMailer.item_contact_mail
    assert_equal "Item contact mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end