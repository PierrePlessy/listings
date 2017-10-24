class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  after_create :send_email

  def send_email
    UserMailer.new_contact(conversation.listing_id, conversation.listing.user.email, content).deliver_now
  end
end
