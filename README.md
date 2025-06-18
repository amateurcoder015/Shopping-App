# 🛍️ Flutter Shopping App

A stylish and functional shopping app built using **Flutter** and **Dart**, showcasing a dynamic shoe catalog with cart functionality, brand filters, and interactive UI. This project focuses on creating a smooth and responsive user experience with meaningful feedback and real-world shopping app features.

---

## ✨ Features

### 🛒 Product Catalog
- A collection of popular shoe products with:
  - Brand name (Nike, Adidas, Puma, etc.)
  - Title
  - Price
  - Available sizes
  - High-quality images with optional transparency

### 🔍 Filtering
- Horizontally scrollable chip filters:
  - Filter by brand (`All`, `Nike`, `Adidas`, `Asics`, `Puma`)
  - Active filter is highlighted for easy visibility

### 🔡 Size Selection
- Users can choose from available sizes per product
- Visual feedback for selected size using Chip UI
- **Bottom sheet alert** if user tries to add without selecting a size

### 🛍️ Cart Functionality
- Add selected product and size to cart
- Cart page shows a list of selected products
- Displays:
  - Product image
  - Title
  - Selected size
  - Quantity
  - Price

### 🗑️ Delete from Cart
- Tapping delete icon shows a **confirmation popup**
- If confirmed, product is removed from the cart
- Prevents accidental deletion

### ✅ User Feedback
- Toast/snackbar/bottom sheet confirmation when:
  - Product added to cart
  - Size not selected
  - Item removed from cart
- Ensures smooth and guided interaction

### 🎨 Theming
- **Dark theme** with Material 3 design
- Alternate card background colors for even/odd product tiles
- Blurred card background using `BackdropFilter` for a modern look

### Screenshots


