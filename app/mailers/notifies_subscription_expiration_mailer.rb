# frozen_string_literal: true

# Notifies subscription expiration 5 days before
class NotifiesSubscriptionExpirationMailer < ApplicationMailer
  default from: 'dev@onebitcode.com'

  def notify
    @user = params[:user]
    @portfolio = params[:portfolio]
    @days_to_expire = params[:days_to_expire]

    mail(
      to: @user.email,
      subject: 'Sua assinatura premium em dev.onebitcode.com irá expirar.',
      reply_to: @user.email
    )
  end
end
