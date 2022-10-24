import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(
                text: 'Seu',
                style: TextStyle(
                  fontSize: 21,
                  color: Color.fromARGB(255, 19, 133, 62),
                ),
              ),
              TextSpan(
                text: '.app',
                style: TextStyle(
                  fontSize: 21,
                  color: Color.fromARGB(255, 150, 21, 21),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
    );
  }
}
