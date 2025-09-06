import 'package:flutter/material.dart';
import '../classes/colors.dart';
import '../classes/dairy_types.dart';
import '../screens/count_screen.dart';

class AddDairyAuditScreen extends StatefulWidget {
  const AddDairyAuditScreen({super.key});

  @override
  State<AddDairyAuditScreen> createState() => _AddDairyAuditScreenState();
}

class _AddDairyAuditScreenState extends State<AddDairyAuditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.walmartBlue,
        title: Text(
          "Add Weekly Dairy Audit",
          style: TextStyle(
            color: AppColors.walmartYellow,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: AppColors.walmartBlue,
        child: Column(
          children: [
            Text(
              "Week: ",
              style: TextStyle(color: AppColors.walmartYellow, fontSize: 24),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: DairyTypes.dairyTypesList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () => {
                        debugPrint(
                          "Tapped on ${DairyTypes.dairyTypesList[index]}",
                        ),
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CountScreen(
                              screenTitle: DairyTypes.dairyTypesList[index],
                            ),
                          ),
                        ),
                      },
                      title: Text(DairyTypes.dairyTypesList[index]),
                      trailing: Text("On hand | In system"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
