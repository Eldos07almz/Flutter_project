import 'dart:math';
import 'package:flutter/material.dart';

class NamesPage extends StatefulWidget {
  const NamesPage({Key? key}) : super(key: key);

  @override
  _NamesPageState createState() => _NamesPageState();
}

class _NamesPageState extends State<NamesPage> {
  final List<String> names = [
    "Alice",
    "Bob",
    "Charlie",
    "Diana",
    "Eve",
    "Frank",
    "Grace",
    "Hank",
    "Ivy",
    "Jack",
    "Kate",
    "Leo",
    "Mona",
    "Nathan",
    "Olivia",
    "Paul",
    "Quincy",
    "Rachel",
  ];

  String randomName = "Press the button to get a name!";

  void generateRandomName() {
    final randomIndex = Random().nextInt(names.length);
    setState(() {
      randomName = names[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Name Generator'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                randomName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: generateRandomName,
                child: const Text(
                  "Generate Name",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
