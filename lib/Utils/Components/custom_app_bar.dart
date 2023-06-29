import 'package:flutter/material.dart';

class CountryAppBar extends AppBar{
  CountryAppBar({super.key, required String title}):super(
    title: Text(title,style: const TextStyle(
      fontWeight: FontWeight.bold,
    ),)
  );

}