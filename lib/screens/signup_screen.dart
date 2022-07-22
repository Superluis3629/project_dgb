import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_dgb/reusable_widgets/reusable_widgets.dart';
import 'package:project_dgb/screens/home_screen.dart';
import '../utils/color_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "ລົງທະບຽນ",
          style: TextStyle(fontSize: 24, color: Colors.grey,fontWeight: FontWeight.bold, fontFamily: 'NotoLao'),
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
              Center(
                child: reusableTextField("ປ້ອນ ຊື່ຂອງທ່ານ", Icons.person_outline, false,
                    _userNameTextController),
              ),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("ປ້ອນ ອີເມວ", Icons.person_outline, false,
                  _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("ປ້ອນລະຫັດຜ່ານ", Icons.lock_outline, true,
                  _passwordTextController,),
              const SizedBox(
                height: 20,
              ),
              firebaseUIButton(context, "ລົງທະບຽນ", () {
                FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text)
                    .then((value) {
                  print("ລົງທະບຽນສຳເລັດແລ້ວ");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }).onError((error, stackTrace) {
                  print("ລົງທະບຽນບໍ່ສຳເລັດ ${error.toString()}");
                });
              })
            ],
          ),
        )),
      ),
    );
}
