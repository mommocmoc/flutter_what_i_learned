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
}
