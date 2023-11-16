# Flutter Sales Management App

This project is a comprehensive sales management application built using Flutter. It's designed to handle various aspects of sales operations including product categories, product data, client management, sales transactions, and invoice generation.

## Screen Flow

The app follows a logical flow, guiding the user from categorizing products to managing sales and clients, eventually leading to the generation of invoices.

### Order of Screens:

1. **Home Screen/Dashboard**
2. **Category Management**
   - Category List Screen
   - Add/Edit Category Screen
3. **Product Management**
   - Product List Screen
   - Add/Edit Product Screen
4. **Client Management**
   - Client List Screen
   - Add/Edit Client Screen
5. **Sales Management**
   - Sales List Screen
   - Add/Edit Sale Screen
6. **Invoice Generation**

## Screen Details

### 1. Home Screen/Dashboard

- **Purpose**: Central navigation point to all major modules.
- **Features**:
  - Quick access buttons to Category, Product, Client, and Sales modules.
  - Summary info or recent activity (optional).

### 2. Category Management

#### Category List Screen

- **Purpose**: Display and manage product categories.
- **Features**:
  - List of categories with options to add, edit, or delete.
  - Navigation to Add/Edit Category Screen.

#### Add/Edit Category Screen

- **Purpose**: Add a new category or edit an existing one.
- **Fields**:
  - ID (auto-generated for new, editable for existing).
  - Category Name.
- **Actions**: Save and Cancel.

### 3. Product Management

#### Product List Screen

- **Purpose**: Display and manage products.
- **Features**:
  - List of products with options to add, edit, or delete.
  - Navigation to Add/Edit Product Screen.

#### Add/Edit Product Screen

- **Purpose**: Add a new product or edit an existing one.
- **Fields**:
  - ID, Code, Product Name, Category (dropdown), Price.
- **Actions**: Save and Cancel.

### 4. Client Management

#### Client List Screen

- **Purpose**: Display and manage client information.
- **Features**:
  - List of clients with options to add, edit, or delete.
  - Navigation to Add/Edit Client Screen.

#### Add/Edit Client Screen

- **Purpose**: Add a new client or edit an existing one.
- **Fields**:
  - Name, Surname, RUC, Email.
- **Actions**: Save and Cancel.

### 5. Sales Management

#### Sales List Screen

- **Purpose**: Display and manage sales.
- **Features**:
  - List of sales with an option to add a new sale.
  - Navigation to Add/Edit Sale Screen.

#### Add/Edit Sale Screen

- **Purpose**: Record a new sale or edit an existing one.
- **Fields**:
  - Sale ID (auto-generated), Invoice Number, Date, Product selector, Quantity.
- **Features**:
  - Auto-calculation of total.
- **Actions**: Save and Cancel.

### 6. Invoice Generation

- **Integrated into the Sales Module**.
- **Purpose**: Generate a PDF invoice for completed sales and send it to the client's email.
- **Trigger**: After saving a sale.

## Additional Information

- **State Management**: Ensures smooth operation and data consistency across screens.
- **Validation**: Data validation is crucial for Add/Edit forms.
- **User Feedback**: Implement loading indicators and success/error messages for better UX.
- **Responsiveness**: Designed to be effective across various device sizes.
