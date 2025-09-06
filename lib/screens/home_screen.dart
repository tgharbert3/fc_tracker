import 'package:flutter/material.dart';
import '../classes/colors.dart';
import '../classes/audit_types.dart';
import '../widgets/home_screen_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Food & Consumables",
          style: TextStyle(
            color: AppColors.walmartYellow,
            fontSize: 36,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: AuditTypes.types.length,
          itemBuilder: (context, index) {
            return HomeScreenTile(type: AuditTypes.types[index]);
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10),
        ),
      ),
    );
  }
}
