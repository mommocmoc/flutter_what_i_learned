import 'package:flutter/material.dart';
import 'package:flutter_what_i_learned/screens/dog_info_screen.dart';
import 'package:provider/provider.dart';
import 'models/dog.dart';
import 'screens/dog_info_screen.dart';

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
        title: 'Provider 12 - anonymous route',
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
        title: const Text("Provider 12 - anonymous route"),
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
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return ChangeNotifierProvider.value(
                      value: context.read<Dog>(),
                      child: const DogInfoScreen(),
                    );
                  }));
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
            Text("BarkBark ! ${context.watch<String>()}"),
          ],
        ),
      ),
    );
  }
}
