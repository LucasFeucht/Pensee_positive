import 'package:flutter/material.dart';

void main() {
  runApp(PenseePositiveApp());
}

class PenseePositiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final String phrase = "Pourquoi ne pas faire un peu plus confiance en toi ?";
  final int numeroPhrase = 57;
  final int points = 23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '#$numeroPhrase',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
                  child: Text(
                    phrase,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 16,
              left: 16,
              child: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '$points',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              bottom: 32,
              right: MediaQuery.of(context).size.width / 2 - 28,
              child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.share),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
