# 🚀 Modern Blog System

A high-performance, aesthetically premium blog publishing platform built with **Ruby on Rails 7**.

This application features a sophisticated content management workflow, robust authorization, and a state-of-the-art "glassmorphism" user interface.

## ✨ Key Features

- **🛡️ Secure Publishing Workflow**: 
  - **Publish Now**: Go live instantly with one click.
  - **Drafting**: Save work-in-progress posts privately.
  - **Smart Scheduling**: Set a future date/time for automatic publication.
- **🔐 Advanced Authorization**: Powered by **Action Policy**. 
  - Only post authors can edit or delete their own content.
  - Public visitors can view published posts but see no administrative actions.
- **🎨 Premium UI/UX**:
  - **Glassmorphism Header**: Modern blur effects and sticky navigation.
  - **Author Profiles**: Integrated Gravatar support and custom usernames.
  - **Interactive Actions**: 3-dot dropdown menus for a clean, professional look.
  - **Mobile First**: Fully responsive design using modern CSS variables and Inter typography.
- **👤 User Management**: Full authentication suite powered by **Devise**.
  - Profile customization including avatars and display names.

## 🛠️ Tech Stack

- **Framework**: Ruby on Rails 7.1+
- **Database**: MySQL
- **Authentication**: Devise
- **Authorization**: Action Policy
- **Frontend**: Vanilla CSS (Custom Design System), Hotwire (Turbo & Stimulus)
- **Avatars**: Gravatar Integration

## 🚀 Getting Started

### 1. Requirements
Ensure you have **Ruby 3.x**, **Rails 7.x**, and **MySQL** installed.

### 2. Installation
```bash
bundle install
bin/rails db:prepare
```

### 3. Run the App
For the full experience (including CSS/JS watching):
```bash
bin/dev
```
Otherwise, use the standard server:
```bash
bin/rails s
```
Visit [http://localhost:3000](http://localhost:3000) to start blogging!

## 📂 Project Structure

- `app/models/blog_post.rb`: Logic for scheduling, drafts, and future-date validations.
- `app/policies/blog_post_policy.rb`: Centralized authorization rules.
- `app/assets/stylesheets/application.css`: Modern design system and component styles.
- `app/views/layouts/application.html.erb`: The "Glassmorphism" global shell.
- `app/javascript/application.js`: Interactive elements like the dropdown click-toggle.

---
*Built with ❤️ using Ruby on Rails & Modern Web Standards.*
