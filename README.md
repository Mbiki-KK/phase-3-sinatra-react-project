# Backend README

This README provides an overview of the backend of the Contact Management App. It describes the three models used in the application (Contacts, Relationship, and User) and provides instructions for setting up the Contacts table and presenting the data to the frontend.

## Models

### Contacts Model

The Contacts model represents an individual contact and stores the following information:

- `id`: Unique identifier for the contact.
- `name`: Name of the contact.
- `email`: Email address of the contact.
- `phone`: Phone number of the contact.
- `status`: Status of the contact.
- `location`: Location of the contact.
- `relation_id`: Foreign key referencing the Relationship model.

### Relationship Model

The Relationship model represents the relationship of a contact with the user and stores the following information:

- `id`: Unique identifier for the relationship.
- `name`: Name of the relationship.

### User Model

The User model represents a user of the Contact Management App and stores the following information:

- `id`: Unique identifier for the user.
- `username`: Username of the user.
- `email`: Email address of the user.
- `password`: Encrypted password of the user.

## Setting Up the Contacts Table

To set up the Contacts table in the database, follow these steps:

1. Ensure that you have Ruby and Rails installed on your system.

2. Run the database migrations to create the necessary tables:

   ```shell
   $ rails db:migrate
