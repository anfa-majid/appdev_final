import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreSeederScreen extends StatelessWidget {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  void seedData() async {
    // Banners
    await firestore.collection('banners').add({
      'imageUrl': 'https://github.com/anfa-majid/appdev_final/blob/main/appdev_final/assets/TVbanner.jpg?raw=true',
    });
    await firestore.collection('banners').add({
      'imageUrl': 'https://github.com/anfa-majid/appdev_final/blob/main/appdev_final/assets/headphonesBanner.jpg?raw=true',
    });

    // Categories
    await firestore.collection('categories').add({
      'name': 'Earn 100%',
      'imageUrl': 'https://github.com/anfa-majid/appdev_final/blob/main/appdev_final/assets/ticket.png',
    });
    await firestore.collection('categories').add({
      'name': 'Tax Note',
      'imageUrl': 'https://github.com/anfa-majid/appdev_final/blob/main/appdev_final/assets/note.png',
    });
    await firestore.collection('categories').add({
      'name': 'Premium',
      'imageUrl': 'https://github.com/anfa-majid/appdev_final/blob/main/appdev_final/assets/diamond.png',
    });
    await firestore.collection('categories').add({
      'name': 'Challenge',
      'imageUrl': 'https://github.com/anfa-majid/appdev_final/blob/main/appdev_final/assets/controller.png',
    });
    await firestore.collection('categories').add({
      'name': 'More',
      'imageUrl': 'https://github.com/anfa-majid/appdev_final/blob/main/appdev_final/assets/threedots.png',
    });

    // Products
    await firestore.collection('products').add({
      'name': 'Monitor',
      'imageUrl': 'https://github.com/anfa-majid/appdev_final/blob/main/appdev_final/assets/monitor.png?raw=true',
      'price': 45000,
      'isPopular': true,
    });
    await firestore.collection('products').add({
      'name': 'Running Shoes',
      'imageUrl': 'https://github.com/anfa-majid/appdev_final/blob/main/appdev_final/assets/shoe.png?raw=true',
      'price': 5000,
      'isPopular': true,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Firestore Seeder')),
      body: Center(
        child: ElevatedButton(
          onPressed: seedData,
          child: Text('Seed Firestore Data'),
        ),
      ),
    );
  }
}