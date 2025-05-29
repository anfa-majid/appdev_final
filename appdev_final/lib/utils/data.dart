import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreSeederScreen extends StatelessWidget {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  void seedData() async {
    await firestore.collection('banners').add({
      'imageUrl': 'https://github.com/anfa-majid/appdev_final/blob/main/appdev_final/assets/TVbanner.jpg?raw=true',
    });
    await firestore.collection('banners').add({
      'imageUrl': 'https://github.com/anfa-majid/appdev_final/blob/main/appdev_final/assets/headphonesBanner.jpg?raw=true',
    });

    await firestore.collection('categories').add({
      'name': 'Earn 100%',
      'imageUrl': 'https://raw.githubusercontent.com/anfa-majid/appdev_final/refs/heads/main/appdev_final/assets/ticket.svg?raw=true',
    });
    await firestore.collection('categories').add({
      'name': 'Tax Note',
      'imageUrl': 'https://raw.githubusercontent.com/anfa-majid/appdev_final/refs/heads/main/appdev_final/assets/note.svg?raw=true',
    });
    await firestore.collection('categories').add({
      'name': 'Premium',
      'imageUrl': 'https://raw.githubusercontent.com/anfa-majid/appdev_final/refs/heads/main/appdev_final/assets/sketch-logo.svg?raw=true',
    });
    await firestore.collection('categories').add({
      'name': 'Challenge',
      'imageUrl': 'https://raw.githubusercontent.com/anfa-majid/appdev_final/refs/heads/main/appdev_final/assets/game-controller.svg?raw=true',
    });
    await firestore.collection('categories').add({
      'name': 'More',
      'imageUrl': 'https://raw.githubusercontent.com/anfa-majid/appdev_final/refs/heads/main/appdev_final/assets/dots-three-outline.svg?raw=true',
    });

    await firestore.collection('products').add({
      'name': 'Moniter',
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