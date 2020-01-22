# frozen_string_literal: true

# check subscriptions
class CheckSubscriptionsService
  def call
    Order.where(status: :active).each do |order|
      if order.due_date <= Time.now
        expires_order(order)
      elsif order.due_date <= Time.now + 5.days
        send_mail_before_expiration(order)
      end
    end
  end

  private

  def expires_order(order)
    order.update(status: :inactive)
    order.portfolio.update(featured: false)
  end

  def send_mail_before_expiration(order)
    NotifiesSubscriptionExpirationMailer.with(
      user: order.portfolio.user,
      portfolio: order.portfolio,
      days_to_expire: order.due_date.day - Time.now.day
    ).notify.deliver
  end
end
