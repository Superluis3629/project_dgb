import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/color_utils.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificaionScreenState();
}

class _NotificaionScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("FFFFFF"),
          hexStringToColor("FFFFFF"),
          hexStringToColor("FFFFFF")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    );
  }
}
