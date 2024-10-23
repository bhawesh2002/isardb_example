// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final String? image;
  final Color? color;

  CategoryModel({
    required this.name,
    required this.image,
    required this.color,
  });

  CategoryModel copyWith({
    String? name,
    String? image,
    Color? color,
  }) {
    return CategoryModel(
      name: name ?? this.name,
      image: image ?? this.image,
      color: color ?? this.color,
    );
  }
}
