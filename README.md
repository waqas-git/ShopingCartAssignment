### Appetizers

**Appetizers** is a sample iOS shopping cart application that allows users to browse various appetizers, select items from a list, and place online orders. 
The app demonstrates a basic shopping cart flow without integrating any payment methods. 
It's built using SwiftUI and leverages Kingfisher for efficient image loading and caching.

### Features

**Browse Appetizers:** Users can view a list of available appetizers, complete with images and descriptions.

**Select and Add to Cart:** Easily add items to your shopping cart with a simple tap.

**Order Review:** View the items in your cart before placing the order.

**Delete Orders:** User can delete the order to swipe right the list item from order view.

**Responsive Design:** The app is optimized for various screen sizes and works iPhone devices.

### API
The app fetches the list of appetizers from a custom API hosted online. 

The API serves a sample **JSON** file containing appetizer data, including item names, descriptions, images, and prices.

Sample API URL:
[Appetizers Sample JSON
](https://waqas-git.github.io/api/appetizers.json)

## API Response

Here's an example of a sample API response used by the Appetizers app.

```json
"request": [
    {
      "name": "Asian Flank Steak",
      "protein": 14,
      "price": 8.99,
      "calories": 300,
      "description": "This perfectly thin cut just melts in your mouth.",
      "id": 1,
      "carbs": 0,
      "imageURL": "https://raw.githubusercontent.com/waqas-git/api/refs/heads/main/images/asian-flank-steak.jpg"
    },
    {
      "protein": 4,
      "price": 6.99,
      "name": "Blackened Shrimp",
      "calories": 450,
      "description": "Seasoned shrimp from the depths of the Atlantic Ocean.",
      "id": 2,
      "carbs": 3,
      "imageURL": "https://raw.githubusercontent.com/waqas-git/api/refs/heads/main/images/blackened-shrimp.jpg"
    }
]
```
-------------------------------------------------------------------------------------------------------------------------

### Libraries Used
**Kingfisher:** Used for loading and caching images efficiently. It helps improve app performance by downloading images asynchronously and caching them for quick reuse.

**Installation of Kingfisher via Swift Package Manager:**

To add Kingfisher to your project using Swift Package Manager:

In Xcode, **go to File > Swift Packages > Add Package Dependency**.

Enter the repository URL: https://github.com/onevcat/Kingfisher.

Choose the latest version of Kingfisher and integrate it into your project.



## Screenshots
| Home Screen | Product Details | Order Screen | 
|-------------|---------------|----------|
| ![Home Screen](https://github.com/waqas-git/ShopingCartAssignment/blob/main/Screenshots/Home.png) | ![Home Screen](https://github.com/waqas-git/ShopingCartAssignment/blob/main/Screenshots/Deatils_screen.png) | ![Home Screen](https://github.com/waqas-git/ShopingCartAssignment/blob/main/Screenshots/Delete_Order.png) | 

### Prerequisites

- iOS version: Xcode 16.x / Swift 5.x
- 

### Clone the Repository

```bash
git clone https://github.com/waqas-git/ShopingCartAssignment.git


