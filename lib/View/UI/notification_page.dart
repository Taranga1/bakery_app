import 'package:bakery_app/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<NotificationModel> notificationmodel = [
    NotificationModel(
      title: "New Version is available",
      subtitle:
          "New Update is Available. Please Update your application to get benefits",
      seen: false,
      time: "1 min ago",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: notificationmodel.length,
              itemBuilder: (context, index) {
                return SafeArea(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Card(
                        elevation: 4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 0.96,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Icon(Icons.notifications_on,
                                    size: 35, color: Colors.deepOrange),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
