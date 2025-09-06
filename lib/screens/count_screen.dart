import 'package:fc_tracker/classes/colors.dart';
import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key, required this.screenTitle});
  final String screenTitle;

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  int totalCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.screenTitle,
          style: TextStyle(
            color: AppColors.walmartYellow,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.walmartBlue,
      ),
      body: Column(
        children: [
          // TextField(decoration: const InputDecoration(hintText: "Add Count")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => {},
                child: Text("Add Full Pallet"),
              ),
              ElevatedButton(
                onPressed: () => {},
                child: Text("Complete Count"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
