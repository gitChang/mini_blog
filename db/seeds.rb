puts "Refreshing database..."
Post.destroy_all

Post.create!(
  title: "Morning Coffee Thoughts",
  content: "The indicator for this post should show 'Published' because the time has already passed.",
  published_at: 4.hours.ago
)

Post.create!(
  title: "Weekly Wrap-up",
  content: "This post was released yesterday. It should clearly display the 'Published' status with a 12-hour timestamp.",
  published_at: 1.day.ago
)

Post.create!(
  title: "Coming Soon: New Features",
  content: "Since this time is in the future, the indicator logic should switch to 'Scheduled' automatically.",
  published_at: 1.day.from_now
)

puts "Seeds created! Total posts: #{Post.count}"