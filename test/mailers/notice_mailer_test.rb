require 'test_helper'

class NoticeMailerTest < ActionMailer::TestCase
  test "sendmail_insta3" do
    mail = NoticeMailer.sendmail_insta3
    assert_equal "Sendmail insta3", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
