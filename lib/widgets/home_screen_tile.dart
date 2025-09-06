import 'package:fc_tracker/screens/add_water_audit_screen.dart';
import '../screens/add_dairy_audit_screen.dart';
import '../screens/view_water_audit_screen.dart';
import '../screens/view_dairy_audit_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenTile extends StatelessWidget {
  const HomeScreenTile({super.key, required this.type});
  final String type;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: .5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(150),
            offset: Offset(0, 1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(type, style: TextStyle(color: Colors.black)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => {
                  if (type == 'Water')
                    {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AddAuditScreen(),
                        ),
                      ),
                    },
                  if (type == "Dairy")
                    {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AddDairyAuditScreen(),
                        ),
                      ),
                    },
                },
                child: Text("Add Audit"),
              ),
              ElevatedButton(
                onPressed: () => {
                  if (type == 'Water')
                    {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ViewWaterAuditScreen(),
                        ),
                      ),
                    },
                  if (type == "Dairy")
                    {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ViewDairyAuditScreen(),
                        ),
                      ),
                    },
                },
                child: Text("View Audit"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
