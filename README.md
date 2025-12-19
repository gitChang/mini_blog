# 🚀 Rails 7 Mini Blog

A clean, mobile-first blogging platform built with **Ruby on Rails 7** and **Bootstrap 5**. This application features a responsive design that scales to full-width on mobile devices and supports scheduled posts.

## 📋 Features

- **Full CRUD**: Create, Read, Update, and Delete blog posts.
- **Mobile-First UI**: Custom full-width forms and cards for a seamless mobile experience.
- **Smart Feed**: Automatic filtering to hide posts with future publication dates.
- **Validations**: Title uniqueness (case-insensitive) and presence checks.

---

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
git clone https://github.com/gitChang/mini_blog.git
cd mini_blog
```

### 2. Database Setup & Seeding

This command creates your database, runs migrations, and populates the feed with sample data (past, current, and future posts):

```bash
rails db:prepare
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
