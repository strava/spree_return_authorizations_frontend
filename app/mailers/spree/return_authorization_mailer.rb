module Spree
  class ReturnAuthorizationMailer < BaseMailer

    def confirm_email(return_auth)
      @return_auth = return_auth
      subject = "#{Spree::Store.current.name} #{Spree.t('return_authorizations_frontend.return_authorization_mailer.confirm_email.subject')} ##{@return_auth.number}"
      mail(from: from_address, to: return_auth.order.email, subject: subject)
    end
  end
end
