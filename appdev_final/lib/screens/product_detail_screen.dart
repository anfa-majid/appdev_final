import 'package:flutter/material.dart';
import '../model/transaction.dart';
import '../widgets/card_header.dart';
import '../widgets/header.dart';
import '../widgets/transaction_card.dart';
import '../widgets/card_bottom_nav.dart';
import '../widgets/card.dart';

class CardsScreen extends StatelessWidget {
  final List<String> cardImageUrls = [
    'https://www.lhv.ee/assets/images/cards/credit-pink.png',
    'https://www.lhv.ee/assets/images/cards/credit-pink.png',
    'https://www.lhv.ee/assets/images/cards/credit-pink.png',
  ];

  final List<Transaction> transactions = [
    Transaction(title: 'Netflix', date: '15 Dec 2024', amount: '\$15.48'),
    Transaction(title: 'Spotify', date: '14 Dec 2024', amount: '\$19.90'),
    Transaction(title: 'Netflix', date: '12 Dec 2024', amount: '\$15.48'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFED1E8), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CardsHeader(),
                        const SizedBox(height: 24),
                        CardCarousel(cardImageUrls: cardImageUrls),
                        const SizedBox(height: 32),
                        const ActivityHeader(),
                        const SizedBox(height: 16),
                        ...transactions
                            .map((txn) => TransactionTile(txn: txn))
                            .toList(),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: CardsBottomNav(onTabSelected: (index) {
        if (index == 1) return;
        final routes = ['/home', null, '/pix', '/notes', '/extract'];
        if (index >= 0 && index < routes.length && routes[index] != null) {
          Navigator.pushReplacementNamed(context, routes[index]!);
        }
      }),
    );
  }
}
