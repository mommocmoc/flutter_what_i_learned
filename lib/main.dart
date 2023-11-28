import 'package:flutter/material.dart';
import 'package:flutter_what_i_learned/screens/dog_info_screen.dart';
import 'package:provider/provider.dart';
import 'models/dog.dart';
import 'screens/dog_info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _dog = Dog(
    name: "Dccow",
    breed: "Dowwow",
    age: 5,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider 13 - Named route',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => ChangeNotifierProvider.value(
            value: _dog, child: const MyHomePage()),
        '/doginfo': (context) => ChangeNotifierProvider.value(
            value: _dog, child: const DogInfoScreen()),
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _dog.dispose();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider 13 - Named route"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.pets),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/doginfo',
                  );
                },
                child: const Text("Dog Info")),
            const SizedBox(
              height: 10,
            ),
            Text("Age : ${context.watch<Dog>().age}"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: context.read<Dog>().grow,
              child: const Text("Grow!"),
            ),
          ],
        ),
      ),
    );
  }
}
