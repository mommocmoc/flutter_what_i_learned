import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_what_i_learned/models/dog.dart';

class DogInfoScreen extends StatelessWidget {
  const DogInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog Info'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Name : ${context.watch<Dog>().name}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "breed : ${context.select<Dog, String>((dog) => dog.breed)}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Age : ${context.watch<Dog>().age}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
