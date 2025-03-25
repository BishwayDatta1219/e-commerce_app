import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedBottomNavItemIndex = 0;

  _setSelectedBottomNavItemIndex(int index) {
    setState(() {
      _selectedBottomNavItemIndex = index;
    });
  }

  _getContent() {
    if (_selectedBottomNavItemIndex == 0) {
      return HomeContent();
    } else if (_selectedBottomNavItemIndex == 1) {
      return ProductContent();
    } else if (_selectedBottomNavItemIndex == 2) {
      return FavoriteContent();
    } else if (_selectedBottomNavItemIndex == 3) {
      return WishlistContent();
    } else if (_selectedBottomNavItemIndex == 4) {
      return ShoppingCartContent();
    }
    return Text("ERROR!!");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: _buildAppBar(),
        drawer: _buildDrawer(),
        body: _getContent(),
        bottomNavigationBar: _buildBottomNavBar(),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.grey.shade500,
      iconTheme: IconThemeData(color: Colors.black87),
      title: Text(
        "E-Commerce App",
        style: TextStyle(
          color: Colors.black87,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      elevation: 3.0,
      shadowColor: Colors.black,
      actions: [
        IconButton(
          icon: Icon(Icons.search_rounded, size: 24.0),
          onPressed: () => print("thanks for searching"),
        ),
        IconButton(
          icon: Icon(Icons.add_shopping_cart_rounded, size: 24.0),
          onPressed: () => print("thanks for shopping"),
        ),
      ],
    );
  }

  _buildDrawer() {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.grey.shade500),
            accountName: Text(
              "Bishway Datta",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
            accountEmail: Text(
              "example@example.com",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
            currentAccountPicture: CircleAvatar(
              foregroundImage: NetworkImage(
                "https://imgcdn.stablediffusionweb.com/2024/4/21/ef5c1523-2585-4e05-8a46-76391f68f5c9.jpg",
              ),
            ),
          ),
          ListTile(title: Text("Home"), leading: Icon(Icons.home_rounded)),
          ListTile(title: Text("Profile"), leading: Icon(Icons.person_rounded)),
          ListTile(
            title: Text("My Favorite"),
            leading: Icon(Icons.favorite_rounded),
          ),
          ListTile(
            title: Text("Wishlist"),
            leading: Icon(Icons.assignment_turned_in_rounded),
          ),
          ListTile(
            title: Text("Shopping Cart"),
            leading: Icon(Icons.shopping_cart_rounded),
          ),
          ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings_rounded),
          ),
        ],
      ),
    );
  }

  _buildBottomNavBar() {
    return CurvedNavigationBar(
      index: _selectedBottomNavItemIndex,
      maxWidth: double.infinity,
      backgroundColor: Colors.grey.shade300,
      color: Colors.grey.shade500,
      onTap: (index) => _setSelectedBottomNavItemIndex(index),
      items: [
        CurvedNavigationBarItem(
          child: Icon(Icons.home_filled, color: Colors.black87),
          label: 'Home',
          labelStyle: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.inventory_2_rounded, color: Colors.black87),
          label: 'Products',
          labelStyle: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.favorite_rounded, color: Colors.black87),
          label: 'Favorite',
          labelStyle: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            Icons.assignment_turned_in_rounded,
            color: Colors.black87,
          ),
          label: 'Wishlist',
          labelStyle: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.shopping_cart_rounded, color: Colors.black87),
          label: 'Cart',
          labelStyle: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

// ----- HOME CONTENT -----
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Mouse"),
          subtitle: Text("A4tech Wireless Mouse"),
          leading: Icon(Icons.mouse),
        ),
        ListTile(
          title: Text("Laptop"),
          subtitle: Text("AMD Ryzen 7 Processor"),
          leading: Icon(Icons.laptop),
        ),
      ],
    );
  }
}

// ----- PRODUCT CONTENT -----

class ProductContent extends StatefulWidget {
  const ProductContent({super.key});

  @override
  State<ProductContent> createState() => _ProductContentState();
}

class _ProductContentState extends State<ProductContent> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        // margin: EdgeInsets.all(8.0),
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          border: Border.all(width: 1.0, color: Colors.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          spacing: 1,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Center(
                  child: Container(
                    width: 85.0,
                    height: 85.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://m.media-amazon.com/images/I/51kAOLVS21L._AC_SL1280_.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                      // color: Colors.yellow,
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: 3,
                  children: [
                    Text(
                      'Dell Latitude 5000 5450 14" Notebook',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      ' Full HD - Intel Core Ultra 5 125U - 16 GB - 256 GB SSD - Titan Gray',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 30.0,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          child: Icon(
                            isFavorite
                                ? Icons.favorite
                                : Icons.favorite_outline,
                            color: isFavorite ? Colors.red : Colors.black,
                            size: 15.0,
                          ),
                          onTap: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                        ),
                      ],
                    ),
                    Text(
                      'BDT 137,722',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("added to cart");
                      },
                      child: Container(
                        width: 80.0,
                        height: 30.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ----- MY FAVORITE CONTENT -----
class FavoriteContent extends StatelessWidget {
  const FavoriteContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("This is my favorite view"));
  }
}

// ----- WISHLIST CONTENT -----
class WishlistContent extends StatelessWidget {
  const WishlistContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("This is wishlist view"));
  }
}

// ----- SHOPPING CART CONTENT -----
class ShoppingCartContent extends StatelessWidget {
  const ShoppingCartContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("This is shopping cart view"));
  }
}
