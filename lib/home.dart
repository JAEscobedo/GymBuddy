import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // Acción para el botón de notificaciones
          },
        ),
        title: Image.asset(
          'assets/images/logo.png',
          height: 40, // Ajusta el tamaño de la imagen
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Gym News',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Routines',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Scan QR',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/routine');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/');
          }
          // Implementa la funcionalidad de QR en otro momento si es necesario.
        },
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                const SizedBox(height: 4),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
