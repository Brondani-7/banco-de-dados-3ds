# Overview

This is a Flask-based web application for product management (gerenciador de produtos). The application provides a simple interface for adding and viewing products, storing information about product names, prices, and suppliers. It's designed as a lightweight inventory management system with a clean, responsive web interface that includes dark mode functionality.

# User Preferences

Preferred communication style: Simple, everyday language.

# System Architecture

## Backend Architecture
- **Framework**: Flask web framework for Python
- **Architecture Pattern**: Simple MVC pattern with templates for views and Flask routes for controllers
- **Database Layer**: Direct SQLite3 integration with connection helper functions
- **Data Model**: Single table structure for products with id, nome (name), preco (price), and fornecedor (supplier) fields

## Frontend Architecture
- **Template Engine**: Jinja2 (Flask's default templating system)
- **Styling**: CSS with CSS custom properties for theme management
- **UI Features**: Dark mode toggle functionality, responsive design
- **User Interface**: Single-page application with form submission and product listing

## Data Storage
- **Database**: SQLite3 file-based database (produtos.db)
- **Schema**: Simple products table with auto-incrementing primary key
- **Connection Management**: Function-based connection handling with proper cleanup

## Application Flow
- **Initialization**: Database schema creation on startup
- **CRUD Operations**: Create (POST) and Read (GET) operations for products
- **Form Handling**: Server-side form processing with basic validation
- **Error Handling**: Basic error handling for invalid price inputs

# External Dependencies

## Core Dependencies
- **Flask**: Web framework for handling HTTP requests and responses
- **SQLite3**: Built-in Python database module for data persistence

## Frontend Dependencies
- No external JavaScript libraries or CSS frameworks
- Uses standard HTML5 and CSS3 features
- Font family: Segoe UI and system fonts

## Database
- **SQLite3**: Local file-based database storage
- **File**: produtos.db (created automatically)
- **No external database server required**

## Development Dependencies
- Flask's built-in development server
- Debug mode enabled for development