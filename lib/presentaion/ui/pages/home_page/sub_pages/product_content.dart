import 'package:e_commerce_app/presentaion/ui/pages/home_page/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductContent extends StatefulWidget {
  const ProductContent({super.key});

  @override
  State<ProductContent> createState() => _ProductContentState();
}

class _ProductContentState extends State<ProductContent> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductItem(
          title: 'Dell Latitude 5000 5450 14" Notebook',
          description:
              ' Full HD - Intel Core Ultra 5 125U - 16 GB - 256 GB SSD - Titan Gray',
          price: 137.222,
          imagePath:
              "https://m.media-amazon.com/images/I/51kAOLVS21L._AC_SL1280_.jpg",
        ),
        ProductItem(
          title: 'Dell Latitude 5000',
          description: ' Full HD',
          price: 137.222,
          imagePath:
              "https://m.media-amazon.com/images/I/51kAOLVS21L._AC_SL1280_.jpg",
        ),
        ProductItem(
          title: 'Dell Latitude 5000 5450 14" Notebook',
          description:
              ' Full HD - Intel Core Ultra 5 125U - 16 GB - 256 GB SSD - Titan Gray',
          price: 137.222,
          imagePath:
              "https://m.media-amazon.com/images/I/51kAOLVS21L._AC_SL1280_.jpg",
        ),
      ],
    );
  }
}
