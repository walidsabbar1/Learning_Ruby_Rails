# My Blog App

A simple, modern blog application built using **Ruby on Rails**.

This project provides a beautiful, responsive user interface for displaying and managing blog posts, featuring a sleek design with CSS variables, smooth micro-animations, and modern card-based layouts.

## Features

- **Full CRUD Functionality**: Create, Read, Update, and Delete posts directly from the user interface.
- **Blog Posts Display**: View a list of blog posts with their titles, publication dates, and excerpts.
- **Detailed Post View**: Read full article content on dedicated post pages.
- **Modern UI/UX**: Designed using pure CSS with Google Fonts (Inter) and a premium card-based layout. Responsive out of the box.
- **RESTful Architecture**: Clean routes powered by Rails' comprehensive `resources` mapping.

## Requirements

- Ruby (depending on your local setup)
- Rails 7+
- **MySQL Database** (Ensure local MySQL server is running and configured if using original credentials)

## Getting Started

Follow these steps to get the application up and running locally:

### 1. Install dependencies

Ensure you have Ruby, Bundler, and appropriate MySQL development headers installed, then run:

```bash
bundle install
```

### 2. Setup the database

Create the database (typically `my_app_development`) and run the migrations:

```bash
bin/rails db:create
bin/rails db:migrate
```

_(Optional)_ If you have seed data defined in `db/seeds.rb`, you can initialize your database with:

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

- **Controllers**: Logic for creating and retrieving posts is located in `app/controllers/posts_controller.rb`.
- **Views**: All view files (`index`, `show`, `new`, `edit`) are fully styled and located in `app/views/posts/`.
- **Styling**: All modern layout styles and CSS components are centralized in `app/assets/stylesheets/application.css`.
- **Database**: Integrated with MySQL to persistently store your blog post entries.
