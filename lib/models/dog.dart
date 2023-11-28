import 'package:flutter/material.dart';

class Dog with ChangeNotifier {
  final String name, breed;
  int age;

  Dog({
    required this.name,
    required this.breed,
    this.age = 1,
  });

  grow() {
    age++;
    notifyListeners();
    print(age);
  }

  Stream<String> bark() async* {
    for (var i = 0; i < age; i++) {
      await Future.delayed(
        const Duration(seconds: 2),
      );
      var age = i + 1;
      print("Bark $age");
      yield "Bark $age";
    }
  }
}
