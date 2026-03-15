import 'package:flutter/material.dart';
import 'package:bai2/widgets/food_card.dart';

class FoodItem {
  final String name;
  final String description;
  final String price;
  final String imageUrl;

  const FoodItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class FoodListScreen extends StatelessWidget {
  const FoodListScreen({super.key});

  static const List<FoodItem> _foods = [
    FoodItem(
      name: 'Phở Bò',
      description: 'Phở Bò Đặc Biệt',
      price: '65,000 VND',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Pho_bo_2.jpg/320px-Pho_bo_2.jpg',
    ),
    FoodItem(
      name: 'Bún Chả',
      description: 'Bún Chả Hà Nội',
      price: '55,000 VND',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Bun_cha_1.JPG/320px-Bun_cha_1.JPG',
    ),
    FoodItem(
      name: 'Cơm Tấm',
      description: 'Cơm Tấm Sườn Bì Chả',
      price: '50,000 VND',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Com_tam_suon_bi_cha.jpg/320px-Com_tam_suon_bi_cha.jpg',
    ),
    FoodItem(
      name: 'Bánh Mì',
      description: 'Bánh Mì Thịt Nướng',
      price: '35,000 VND',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Banhmi.jpg/320px-Banhmi.jpg',
    ),
    FoodItem(
      name: 'Gỏi Cuốn',
      description: 'Gỏi Cuốn Tôm Thịt',
      price: '40,000 VND',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Cha_gio_and_goi_cuon.jpg/320px-Cha_gio_and_goi_cuon.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        centerTitle: true,
        title: const Text(
          'DANH SÁCH MÓN ĂN',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: _foods.length,
        itemBuilder: (context, index) => FoodCard(food: _foods[index]),
      ),
    );
  }
}
