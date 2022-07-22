import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_dgb/calculator/calculator_screen.dart';
import 'package:project_dgb/screens/menu_screen/payment_screen.dart';
import 'package:project_dgb/screens/screen_signin.dart';

import '../utils/color_utils.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late double screenWidth, screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(0),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Card(
              elevation: 0,
              margin: EdgeInsets.all(0.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenSignin()));
                },
                splashColor: Colors.blue[200],
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/document1.svg",
                      height: 40,
                      color: Colors.blue,
                    ),
                    Text(
                      "ລາຍການສິນເຊື່ອ",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'NotoLao',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500]),
                    )
                  ],
                )),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.all(0.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CalculatorScreen()));
                },
                splashColor: Colors.blue[200],
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/service.svg",
                      height: 40,
                      color: Colors.blue,
                    ),
                    Text("ບໍລິການເຊົ່າສິນເຊື່ອ",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'NotoLao',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500]))
                  ],
                )),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.all(0.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenSignin()));
                },
                splashColor: Colors.blue[200],
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/promotion.svg",
                      height: 40,
                      color: Colors.blue,
                    ),
                    Text("ໂປໂມຊັ່ນ",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'NotoLao',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500]))
                  ],
                )),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.all(0.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentScreend()));
                },
                splashColor: Colors.blue[200],
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/bank.svg",
                      height: 40,
                      color: Colors.blue,
                    ),
                    Text("ຊ່ອງທາງການຊຳລະ",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'NotoLao',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500]))
                  ],
                )),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.all(0.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenSignin()));
                },
                splashColor: Colors.blue[200],
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/gifbox.svg",
                      height: 40,
                      color: Colors.blue,
                    ),
                    Text("ສິດທິພິເສດ",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'NotoLao',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500]))
                  ],
                )),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.all(0.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CalculatorScreen()));
                },
                splashColor: Colors.blue[200],
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/calulator.svg",
                      height: 40,
                      color: Colors.blue,
                    ),
                    Text("ຄິດໄລ່ງວດ",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'NotoLao',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500]))
                  ],
                )),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.all(0.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenSignin()));
                },
                splashColor: Colors.blue[200],
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/document2.svg",
                      height: 40,
                      color: Colors.blue,
                    ),
                    Text("ສະໝັກຂໍສິນເຊື່ອ",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'NotoLao',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500]))
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
