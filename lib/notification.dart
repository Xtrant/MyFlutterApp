import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationState extends StatelessWidget {
  const NotificationState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    MediaQuery.of(context).orientation;
    return Scaffold(
        appBar: AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  const [
          Icon(
            Icons.notifications,
            color: Colors.orangeAccent,
            size: 35,
          ),
          Text('Your Notification',
          style: TextStyle(
            color: CupertinoColors.white,
            fontFamily: 'Arial'
          ),)
        ],
      ),
    ),
            body: const Center(
              child: Text('You do not have a notification',
              style: TextStyle(
                color: CupertinoColors.white,

              ),),

    )
    );
  }
}
