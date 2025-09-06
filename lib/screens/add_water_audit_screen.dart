import 'package:fc_tracker/classes/colors.dart';
import 'package:fc_tracker/screens/count_screen.dart';
import 'package:flutter/material.dart';
import '../classes/water_types.dart';

class AddAuditScreen extends StatefulWidget {
  const AddAuditScreen({super.key});

  @override
  State<AddAuditScreen> createState() => _AddAuditScreenState();
}

class _AddAuditScreenState extends State<AddAuditScreen> {
  Water waterData = Water();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.walmartBlue,
        title: Text(
          "Add Weekly Water Audit",
          style: TextStyle(
            color: AppColors.walmartYellow,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Week: ", style: TextStyle(fontSize: 24)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: waterData.waterTypes.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    tileColor: Colors.white,
                    onTap: () => {
                      debugPrint("Tapped on ${waterData.waterTypes[index]}"),
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CountScreen(
                            screenTitle: waterData.waterTypes[index],
                          ),
                        ),
                      ),
                    },
                    title: Text(waterData.waterTypes[index]),
                    trailing: Text("On hand | In system"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
