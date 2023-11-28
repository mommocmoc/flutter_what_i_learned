import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int counter = 0;

  onPressed() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                ),
                child: const Text('Provider Essential!'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child: Column(
                  children: [
                    Text(
                      "$counter",
                      style: const TextStyle(
                        fontSize: 50,
                      ),
                    ),
                    FloatingActionButton.large(
                      onPressed: onPressed,
                      child: const Text("Increment"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CounterB(counter: counter)
            ],
          ),
        ),
      ),
    );
  }
}

class CounterB extends StatelessWidget {
  const CounterB({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$counter"),
          const Text("Sibling"),
        ],
      ),
    );
  }
}
