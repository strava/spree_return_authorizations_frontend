Spree::ReturnAuthorization.class_eval do
  after_commit :send_ra_confirmation_mail, on: :create

  private
  def send_ra_confirmation_mail
    Spree::ReturnAuthorizationMailer.confirm_email(self).deliver if self.authorized?
  end
end
