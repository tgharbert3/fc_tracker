import 'package:flutter/material.dart';
import '../classes/colors.dart';
import './addAuditScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.walmartBlue),
      body: Container(
        color: AppColors.walmartBlue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Food & Consumables",
                  style: TextStyle(
                    color: AppColors.walmartYellow,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Store 3825",
                    style: TextStyle(
                      color: AppColors.walmartYellow,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddAuditScreen()),
                ),
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.walmartYellow,
                foregroundColor: AppColors.walmartBlue,
              ),
              child: Text(
                "Add Water Audit",
                style: TextStyle(
                  color: AppColors.walmartBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.walmartYellow,
                  foregroundColor: AppColors.walmartBlue,
                ),
                child: Text(
                  "View Past Audits",
                  style: TextStyle(
                    color: AppColors.walmartBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
