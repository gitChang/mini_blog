puts "Cleaning database..."
Post.destroy_all

puts "Creating posts..."

# 1. PAST POSTS
Post.create!(
  title: "A Trip to the Past",
  content: "This post was written yesterday. It should be visible to everyone.",
  published_at: 1.day.ago
)

Post.create!(
  title: "The Very First Story",
  content: "This is an old post from last week. It represents the history of this blog.",
  published_at: 7.days.ago
)

# 2. CURRENT POST
Post.create!(
  title: "Live Right Now",
  content: "This post was just published! It should appear at the very top of the feed.",
  published_at: Time.current
)

# 3. FUTURE POSTS (Should NOT show in feed yet)
Post.create!(
  title: "Future Predictions 2026",
  content: "This is a scheduled post. You shouldn't be able to see this on the index page yet!",
  published_at: 1.month.from_now
)

Post.create!(
  title: "Tomorrow's News",
  content: "I am waiting for tomorrow to be revealed.",
  published_at: 1.day.from_now
)

puts "Finished! Created #{Post.count} posts."