# My Blog App

A simple, modern blog application built using **Ruby on Rails**.

This project provides a beautiful, responsive user interface for displaying blog posts, featuring a sleek design with CSS variables, smooth micro-animations, and modern card-based layouts.

## Features

- **Blog Posts Display**: View a list of blog posts with their titles, publication dates, and excerpts.
- **Detailed Post View**: Read full article content on dedicated post pages.
- **Modern UI/UX**: Designed using pure CSS with Google Fonts (Inter) and a premium card-based layout. Responsive out of the box.

## Requirements

- Ruby (depending on your local setup)
- Rails 7+
- A relational database (SQLite by default)

## Getting Started

Follow these steps to get the application up and running locally:

### 1. Install dependencies
Ensure you have Ruby and Bundler installed, then run:
```bash
bundle install
```

### 2. Setup the database
Create the database and run the migrations:
```bash
bin/rails db:create
bin/rails db:migrate
```
*(Optional)* If you have seed data defined in `db/seeds.rb`, you can initialize your database with:
```bash
bin/rails db:seed
```

### 3. Start the Rails server
```bash
bin/rails server
```
Or simply use `rails s`.

By default, the application will be accessible at [http://localhost:3000](http://localhost:3000).

## Application Structure

- **Controllers**: Logic for retrieving posts is located in `app/controllers/posts_controller.rb`.
- **Views**: The HTML structures are defined in `app/views/posts/`.
- **Styling**: All modern layout styles and CSS variables are located in `app/assets/stylesheets/application.css`.
