require 'test_helper'

feature "Conversations" do

  describe "NOT Logged in" do
    it "redirects me" do
        post listing_contact_path, {
          listing_id: listings(:iphone).id,
          message: "test message"
        }

        assert_equal 302, last_response.status
    end
  end

  describe "Logged in" do
    before do
      sign_in users(:seller)
    end

    it "saves a new conversation" do
      assert_difference 'Conversation.all.length' do
        post listing_contact_path, {
          listing_id: listings(:iphone).id,
          message: "test message"
        }
      end
    end

    it "saves a new message" do
      assert_difference 'Message.all.length' do
        post listing_contact_path, {
          listing_id: listings(:iphone).id,
          message: "test message"
        }
      end
    end
  end

  describe "Errors" do
    before do
      sign_in users(:seller)
    end

    it "does not create conversation" do
      refute_difference 'Message.all.length' do
        post listing_contact_path, {
          listing_id: nil,
          message: "test message"
        }
      end
    end

    it "returns an error if no listing provided" do
      post listing_contact_path, {
        listing_id: nil,
        message: "test message"
      }

      puts json_response
    end
  end

end
