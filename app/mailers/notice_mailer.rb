class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_insta3.subject
  #
  def sendmail_insta3(insta3)
    @insta3 = insta3

    mail to: "cqj03164@gmail.com",
         subject: '【Instaclub】画像が投稿されました'
  end
end
