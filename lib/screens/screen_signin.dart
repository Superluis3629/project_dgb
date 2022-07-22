import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_dgb/screens/signin_screen.dart';

import '../reusable_widgets/reusable_widgets.dart';
import '../utils/color_utils.dart';

class ScreenSignin extends StatefulWidget {
  const ScreenSignin({Key? key}) : super(key: key);

  @override
  State<ScreenSignin> createState() => _ScreenSigninState();
}

class _ScreenSigninState extends State<ScreenSignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // title: const Text(
        //   "ລົງທະບຽນ",
        //   style: TextStyle(fontSize: 24, color: Colors.grey,fontWeight: FontWeight.bold, fontFamily: 'NotoLao'),
        // ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("8edaff"),
          hexStringToColor("8edaff"),
          hexStringToColor("8edaff")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/logo.png", height: 220,),
                SizedBox(
                  height: 55,
                ),
                SigninUIButton(context, "ເຂົ້າສູ່ລະບົບ", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
