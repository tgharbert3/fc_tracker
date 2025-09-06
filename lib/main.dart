import 'package:fc_tracker/screens/home_screen.dart';
import './classes/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(colorScheme: AppColors.customScheme),
    ),
  );
}
