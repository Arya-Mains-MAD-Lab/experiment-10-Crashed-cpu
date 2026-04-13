import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MediaPage());
  }
}

class MediaPage extends StatelessWidget {
  const MediaPage({super.key});
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text("Image Handling")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://static2.tripoto.com/media/filter/nl/img/15546/TripDocument/1453297012_skydive_dubai.jpg",
              width: screenSize.width * 0.8,
              height: screenSize.height * 0.3,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            const Text("Responsive Image Display"),
          ],
        ),
      ),
    );
  }
}
