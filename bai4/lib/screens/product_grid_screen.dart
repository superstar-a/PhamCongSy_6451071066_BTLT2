import 'package:flutter/material.dart';
import 'package:bai4/widgets/product_tile.dart';

class ProductItem {
  final String name;
  final String price;
  final String rating;
  final String imageUrl;

  const ProductItem({
    required this.name,
    required this.price,
    required this.rating,
    required this.imageUrl,
  });
}

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({super.key});

  static const List<ProductItem> _products = [
    ProductItem(
      name: 'Giày Chạy Bộ Nam 6451071066',
      price: '₫950,000',
      rating: '4.5/5',
      imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400&q=80',
    ),
    ProductItem(
      name: 'Áo Thun Tập Luyện',
      price: '₫320,000',
      rating: '4.5/5',
      imageUrl: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400&q=80',
    ),
    ProductItem(
      name: 'Bóng Đá Thể Thao',
      price: '₫510,000',
      rating: '4.5/5',
      imageUrl: 'https://images.unsplash.com/photo-1575361204480-aadea25e6e68?w=400&q=80',
    ),
    ProductItem(
      name: 'Bóng Đá Thể Thao',
      price: '₫415,000',
      rating: '4.5/5',
      imageUrl: 'https://images.unsplash.com/photo-1553361371-9b22f78e8b1d?w=400&q=80',
    ),
    ProductItem(
      name: 'Mũ Lưỡi Trai',
      price: '₫185,000',
      rating: '4.5/5',
      imageUrl: 'https://images.unsplash.com/photo-1588850561407-ed78c282e89b?w=400&q=80',
    ),
    ProductItem(
      name: 'Vớ Thể Thao Cao Cấp',
      price: '₫95,000',
      rating: '4.5/5',
      imageUrl: 'https://images.unsplash.com/photo-1584735175315-9d5df23860e6?w=400&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: const Text(
          'Cửa Hàng Thể Thao',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.78,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: _products
            .map((product) => ProductTile(product: product))
            .toList(),
      ),
    );
  }
}
