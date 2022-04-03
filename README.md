# UJS Pagination App

Web application with articles, powered by Rails 7, Rails-UJS and Kaminari.

## Setup

- Clone this repo and move inside the project directory
- Run `bundle install`
- Run `yarn`
- Run `rails db:setup db:seed`

## Run

- Run `bin/dev`

## How does it work?

On the index, articles are paginated (8 per page). When we click on the "Load more" button, Rails-UJS catches the click, makes an AJAX request, still handled by `ArticlesController#index` but with `:js` format.

The `.js.erb` is processed by ERB then returned to Rails-UJS which executes the script. This script append the next articles to the list then updates or remove the « Load more » button.