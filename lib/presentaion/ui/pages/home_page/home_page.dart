import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:e_commerce_app/presentaion/ui/pages/home_page/sub_pages/favourite_content.dart';
import 'package:e_commerce_app/presentaion/ui/pages/home_page/sub_pages/home_content.dart';
import 'package:e_commerce_app/presentaion/ui/pages/home_page/sub_pages/product_content.dart';
import 'package:e_commerce_app/presentaion/ui/pages/home_page/sub_pages/shopping_cart_content.dart';
import 'package:e_commerce_app/presentaion/ui/pages/home_page/sub_pages/wishlist_content.dart';
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
