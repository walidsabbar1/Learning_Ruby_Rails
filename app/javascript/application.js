// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Global event delegation for dropdowns
document.addEventListener("click", (e) => {
  // If we click on a dropdown button
  if (e.target.closest(".dropbtn")) {
    const dropdown = e.target.closest(".dropdown");
    dropdown.classList.toggle("show");
  } else {
    // Close all dropdowns if clicking outside
    document.querySelectorAll(".dropdown.show").forEach((el) => {
      el.classList.remove("show");
    });
  }
});
