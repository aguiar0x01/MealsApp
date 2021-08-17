import 'package:flutter/material.dart';

class Category {
  // attributes
  final String id;
  final String title;
  final Color color;

  // constructor
  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
