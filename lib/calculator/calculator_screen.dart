// ignore_for_file: prefer_const_constructors

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();

  String? selected;

  double? totalInterset;
  double? monthlyInterest;
  double? monthlyInstallment;

  void loancalculation() {
    final amount =
        int.parse(_controller1.text) - int.parse(_controller2.text); //1
    final tinterest =
        amount * (double.parse(_controller3.text) / 100) * int.parse(selected!);
    final ninterest = tinterest / (int.parse(selected!) * 12);

    final month1 = amount / (int.parse(selected!)); //2
    final month2 = amount * (double.parse(_controller3.text) / 100);

    final pay = month1 + month2;

    setState(() {
      totalInterset = tinterest; //ລວມດອກເບ້ຍທັ້ງໝົດ
      monthlyInterest = pay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: body(),
    );
  }

  Widget body() {
    return Container(
      color: Color.fromRGBO(245, 245, 245, 1),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "ຄິດໄລ່ຄ່າງວດ",
                      style: TextStyle(
                          fontFamily: 'NotoLao',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 40, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  inputForm(
                      title: "ຈຳນວນເງິນລາຄາລົດ :",
                      controller: _controller1,
                      hinttext: "ປ້ອນຈຳນວນເງິນຂອງລາຄາລົດ"),
                      
                  inputForm(
                      title: "ຈຳນວນເງິນວາງດາວ :",
                      controller: _controller2,
                      hinttext: "ປ້ອນຈຳນວນເງິນວາງດາວ"),
                  inputForm(
                      title: "ດອກເບ້ຍ(%) :",
                      controller: _controller3,
                      hinttext: "ປ້ອນຈຳນວນເປີເຊັນ%"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "ຈຳນວນເດືອນ",
                    style: TextStyle(fontFamily: 'NotoLao', fontSize: 18),
                  ),
                  Row(
                    children: [
                      loadPeriod("6"),
                      loadPeriod("9"),
                      loadPeriod("12"),
                      loadPeriod("24"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      loadPeriod("36"),
                      loadPeriod("48"),
                      loadPeriod("60"),
                      loadPeriod("72"),
                    ],
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      loancalculation();
                      Future.delayed(Duration.zero);
                      showModalBottomSheet(
                          isDismissible: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 30, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // TextFormField(
                                    //   decoration: InputDecoration(
                                    //     hintText: 'Hint Text',
                                    //     errorText: 'Error Text',
                                    //     border: OutlineInputBorder(),
                                    //   ),
                                    // ),
                                    
                                    Text(
                                      "ຜົນອອກ",
                                      style: TextStyle(
                                          fontFamily: 'NotoLao', fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    result(
                                      title: "ຄ່າງວດຕໍ່ເດືອນ",
                                      amount: monthlyInterest,
                                    ),
                                    result(
                                      title: "ລວມດອກເບ້ຍທັງໝົດທີ່ຕ້ອງຈ່າຍ",
                                      amount: totalInterset,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20.0),
                                        child: Container(
                                          height: 60,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Center(
                                              child: Text(
                                            "ຄິດໄລ່ຄ່າງວດໃໝ່",
                                            style: TextStyle(
                                                fontFamily: 'NotoLao',
                                                fontSize: 30,
                                                color: Colors.white),
                                          )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        "ຄິດໄລ່",
                        style: TextStyle(
                          fontFamily: 'NotoLao',
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget result({String? title, double? amount}) {
    return ListTile(
      title: Text(
        title!,
        style: TextStyle(fontSize: 15, fontFamily: 'NotoLao'),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Text(
          // amount!.toStringAsFixed(2) + " ກີບ",
          '${NumberFormat("#,###").format(amount)}' + " ກີບ",
          style: TextStyle(fontSize: 19, fontFamily: 'NotoLao'),
        ),
      ),
    );
  }

  Widget loadPeriod(String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = title;
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 2, 20, 0),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            border: title == selected
                ? Border.all(color: Colors.red, width: 2)
                : null,
            color: Colors.blue,
            borderRadius: BorderRadius.circular(9),
          ),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }

  Widget inputForm(
      {String? title, TextEditingController? controller, String? hinttext}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: TextStyle(fontFamily: 'NotoLao', fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: hinttext,
                hintStyle: TextStyle(fontFamily: 'NotoLao')),
          ),
        ),
      ],
    );
  }
}
