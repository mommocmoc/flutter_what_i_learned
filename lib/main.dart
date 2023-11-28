import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/dog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Dog>(
          create: (context) => Dog(
            name: "Dccow",
            breed: "Dowwow",
            age: 5,
          ),
        ),
        StreamProvider(
          create: (context) {
            return context.read<Dog>().bark();
          },
          initialData: "Bark 0",
        )
      ],
      child: MaterialApp(
        title: 'Provider 07',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider 07"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "-name : ${context.watch<Dog>().name}",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const BreedAndAge(),
          ],
        ),
      ),
    );
  }
}

class BreedAndAge extends StatelessWidget {
  const BreedAndAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "- breed : ${context.select<Dog, String>((dog) => dog.breed)}",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        const Age(),
      ],
    );
  }
}

class Age extends StatelessWidget {
  const Age({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "- age : ${context.select<Dog, int>((dog) => dog.age)}",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: context.read<Dog>().grow,
          child: const Text("Grow!"),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(context.watch<String>())
      ],
    );
  }
}
