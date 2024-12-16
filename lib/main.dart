import 'package:flutter/material.dart';

void main() {
  runApp(const GymBuddyApp()); // Agregamos const
}

class GymBuddyApp extends StatelessWidget {
  const GymBuddyApp({Key? key}) : super(key: key); // Se agregó Key al constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GymBuddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(), // Agregamos const
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key); // Se agregó Key al constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GymBuddy'), // Agregamos const
      ),
      body: ListView(
        children: const [
          NewsCard(
            imageUrl: 'https://via.placeholder.com/400x200',
            title: 'Cardio Training',
            description: 'Burn Fat',
          ),
          NewsCard(
            imageUrl: 'https://via.placeholder.com/400x200',
            title: 'Follow Our Social Media',
            description: 'Check all our posts!',
          ),
        ],
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const NewsCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key); // Se agregó Key al constructor

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0), // Agregamos const
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0), // Agregamos const
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4), // Agregamos const
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
