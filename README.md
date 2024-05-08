# Receptionist and Doctor Portal Rails Application

This Rails application provides a portal for receptionists to manage patients and a portal for doctors to view patient information and statistics.

## Features

- **Authentication**: Users can sign up and log in using Devise authentication.
- **Receptionist Portal**: Receptionists can perform CRUD operations on patients.
- **Doctor Portal**: Doctors can view a list of patients and statistics.

## Setup

### Prerequisites

- Ruby
- Ruby on Rails
- PostgreSQL

### Installation

1. Clone the repository:

    ```bash
    git clone <https://github.com/Alfastrek/Medical_Management_Portal.git>
    ```

2. Install dependencies:

    ```bash
    bundle install
    ```

3. Set up the database:

    ```bash
    rails db:create
    rails db:migrate
    ```

4. Start the Rails server:

    ```bash
    rails server
    ```

## Usage

1. Open your web browser and navigate to `http://localhost:3000`.
2. Sign up or log in using the provided forms.
3. As a receptionist, you can manage patients by adding, editing, and deleting patient records.
4. As a doctor, you can view a list of patients and other relevant information.

## Technologies Used

- Ruby on Rails
- Devise (for authentication)
- PostgreSQL (as the database)
- Bootstrap (for styling)

## Folder Structure

- `app/controllers`: Contains controller files for managing application logic.
- `app/models`: Contains model files defining the data structure.
- `app/views`: Contains view files for rendering HTML.
- `config/routes.rb`: Defines application routes.
- `Gemfile`: Lists dependencies required for the application.
- `app/assets`: Contains assets like stylesheets and JavaScript files.
- `db/migrate`: Contains migration files for database changes.

