import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_dgb/reusable_widgets/reusable_widgets.dart';

import '../utils/color_utils.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "ປ່ຽນລະຫັດຜ່ານ",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey, fontFamily: 'NotoLao'),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("D4F1F4"),
          hexStringToColor("D4F1F4"),
          hexStringToColor("D4F1F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Email ID", Icons.person_outline, false,
                  _emailTextController),
              const SizedBox(
                height: 20,
              ),
              firebaseUIButton(context, "Reset Passsword", () {
                FirebaseAuth.instance
                    .sendPasswordResetEmail(email: _emailTextController.text)
                    .then((value) => Navigator.of(context).pop());
              })
            ],
          ),
        )),
      ),
    );
  }
}
