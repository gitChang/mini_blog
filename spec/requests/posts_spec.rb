require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    it "works! (now write some real specs)" do
      get posts_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /index" do
    it "displays posts with a past date and hides posts with a future date" do
      # 1. Create a post in the past
      Post.create!(
        title: "Past Post",
        content: "I should be visible",
        published_at: 1.day.ago
      )

      # 2. Create a post in the future
      Post.create!(
        title: "Future Post",
        content: "I should be hidden",
        published_at: 1.day.from_now
      )

      # 3. Visit the index page
      get posts_path

      # 4. Assertions
      expect(response.body).to include("Past Post")
      expect(response.body).not_to include("Future Post")
    end
  end
end