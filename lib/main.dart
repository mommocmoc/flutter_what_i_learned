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
    return ChangeNotifierProvider<Dog>(
      create: (context) => Dog(
        name: "Cow",
        breed: "Cowwow",
        age: 5,
      ),
      child: MaterialApp(
        title: 'Provider 04',
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
        title: const Text("Provider 04"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "-name : ${Provider.of<Dog>(context).name}",
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
          "- breed : ${Provider.of<Dog>(context).breed}",
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
          "- age : ${Provider.of<Dog>(context).age}",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: Provider.of<Dog>(context).grow,
          child: const Text("Grow!"),
        )
      ],
    );
  }
}
