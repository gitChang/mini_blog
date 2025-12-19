require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    it "renders the correct status indicators and 12-hour time" do
      Post.create!(
        title: "Yesterday Post",
        content: "Already live.",
        published_at: 1.day.ago
      )

      Post.create!(
        title: "Tomorrow Post",
        content: "Not live yet.",
        published_at: 1.day.from_now
      )

      get posts_path

      expect(response).to have_http_status(200)

      expect(response.body).to include("Yesterday Post")
      expect(response.body).to include("Published")

      expect(response.body).to include("Tomorrow Post")
      expect(response.body).to include("Scheduled")
    end
  end
end