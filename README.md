# 🚀 Rails 7 Mini Blog

A simple Ruby on Rails blog app built as part of a technical assessment for Lachlan and the FrameSports team. The app demonstrates CRUD functionality (create, read, update, delete) with scheduled publishing — posts can be set to Published or Scheduled for a future time.

## 🛠 Prerequisites

Before you begin, ensure you have the following installed:

- **Ruby**: 3.3.0+
- **Rails**: 7.1+
- **Bundler**

---

## ⚙️ Installation & Setup

Follow these steps to get your development environment running:

### 1. Clone the repository

```bash
git clone git@github.com:gitChang/mini_blog.git
cd mini_blog
```

### 2. Database Setup & Seeding

This command creates your database, runs migrations, and populates the feed with sample data (past, current, and future posts):

```bash
rails db:prepare
rails db:seed
```

### 3. Testing

We use RSpec to verify application logic and ensure future posts remain hidden from the feed.

```bash
# Run the entire test suite
bundle exec rspec
```

### 4. Running Locally

To start the development server:

```bash
rails s -b 0.0.0.0
```

specify "-b 0.0.0.0" if you are using WSL.
