import 'package:flutter/material.dart';

class _Category {
  final String title;
  final List<_MenuItem> items;
  bool isExpanded;

  _Category({
    required this.title,
    required this.items,
    this.isExpanded = false,
  });
}

class _MenuItem {
  final String emoji;
  final String name;

  const _MenuItem({required this.emoji, required this.name});
}

class CategoryMenuScreen extends StatefulWidget {
  const CategoryMenuScreen({super.key});

  @override
  State<CategoryMenuScreen> createState() => _CategoryMenuScreenState();
}

class _CategoryMenuScreenState extends State<CategoryMenuScreen> {
  final List<_Category> _categories = [
    _Category(
      title: 'Fruits 6451071066',
      isExpanded: true,
      items: [
        _MenuItem(emoji: '🍎', name: 'Apple'),
        _MenuItem(emoji: '🍌', name: 'Banana'),
        _MenuItem(emoji: '🍊', name: 'Orange'),
      ],
    ),
    _Category(
      title: 'Vegetables',
      items: [
        _MenuItem(emoji: '🥕', name: 'Carrot'),
        _MenuItem(emoji: '🥦', name: 'Broccoli'),
        _MenuItem(emoji: '🌽', name: 'Corn'),
      ],
    ),
    _Category(
      title: 'Drinks',
      items: [
        _MenuItem(emoji: '☕', name: 'Coffee'),
        _MenuItem(emoji: '🍵', name: 'Tea'),
        _MenuItem(emoji: '🥤', name: 'Juice'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Text(
          'Category Menu',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Expansion Menu 6451071066',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Using ExpansionPanelList',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            ExpansionPanelList(
              elevation: 1,
              expandedHeaderPadding: EdgeInsets.zero,
              expansionCallback: (index, isExpanded) {
                setState(() {
                  _categories[index].isExpanded = isExpanded;
                });
              },
              children: _categories.map((category) {
                return ExpansionPanel(
                  headerBuilder: (context, isExpanded) => ListTile(
                    title: Text(
                      category.title,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  body: Column(
                    children: category.items
                        .map(
                          (item) => ListTile(
                            leading: Text(
                              item.emoji,
                              style: const TextStyle(fontSize: 22),
                            ),
                            title: Text(item.name),
                          ),
                        )
                        .toList(),
                  ),
                  isExpanded: category.isExpanded,
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('StatefulWidget Management'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
