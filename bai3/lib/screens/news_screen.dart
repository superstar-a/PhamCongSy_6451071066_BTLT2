import 'package:flutter/material.dart';
import 'package:bai3/widgets/news_card.dart';

class NewsArticle {
  final String title;
  final String description;
  final String imageUrl;

  const NewsArticle({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  static const List<NewsArticle> _articles = [
    NewsArticle(
      title: 'Article Title 1: Flutter is awesome! 6451071066',
      description:
          'Learn about cross-platform development with the latest news on Flutter framework updates and community tutorials.',
      imageUrl:
          'https://images.unsplash.com/photo-1486325212027-8081e485255e?w=600&q=80',
    ),
    NewsArticle(
      title: 'Article Title 2: Local Coffee Shop Opens',
      description:
          'The cozy new cafe, "The Daily Grind," offers local brews and a relaxing atmosphere for customers.',
      imageUrl:
          'https://images.unsplash.com/photo-1521017432531-fbd92d768814?w=600&q=80',
    ),
    NewsArticle(
      title: 'Article Title 3: New Tech Gadgets',
      description:
          'Discover the newest smartphones, smartwatches, and innovative devices hitting the market this week.',
      imageUrl:
          'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=600&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Text(
          'News',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: _articles
              .map((article) => NewsCard(article: article))
              .toList(),
        ),
      ),
    );
  }
}
