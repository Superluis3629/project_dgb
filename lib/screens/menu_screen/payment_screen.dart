// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentScreend extends StatefulWidget {
  const PaymentScreend({Key? key}) : super(key: key);

  @override
  State<PaymentScreend> createState() => _PaymentScreendState();
}

class _PaymentScreendState extends State<PaymentScreend> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          elevation: 0,
          title: const Text(
            "ຊ່ອງທາງການຊຳລະ",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'NotoLao'),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: ExpansionTileCard(
                    baseColor: Colors.white,
                    elevation: 2,
                    shadowColor: Colors.grey,
                    // expandedColor: Colors.red[50],
                    key: cardA,
                    leading: CircleAvatar(
                        child: Image.asset("assets/images/bcelone.jpg")),
                    title: Text(
                      "BCEL One",
                      style: TextStyle(
                        fontFamily: 'NotoLao',
                        fontSize: 14,
                      ),
                    ),
                    // subtitle: Text("FLUTTER DEVELOPMENT COMPANY"),
                    children: <Widget>[
                      Divider(
                        thickness: 2.0,
                        height: 0.0,
                      ),
                      Align(
                        // alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/Pay1.png",
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                child: Text(
                                  "ທຄຕລ",
                                  style: TextStyle(
                                    fontFamily: 'NotoLao',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "ສະດວກສະບາຍກັບຫຼາກຫຼາຊ່ອງທາງໃນການຊຳລະຄ່າງວດສຳລັບລູກຄ້າດີຈີບີ, ຊຳລະຜ່ານແອັບ BCEL One ລູກຄ້າສາມາດເຂົ້າມາຊຳລະຜ່ານ BCEL One ໂດຍມີຂັ້ນຕອນດັ່ງລຸ່ມນີ້\n"
                                  "1. ກົດເຂົ້າໄປຫາໜ້າແອັຟພິເຄຊັນ ແລ້ວເລືອກຊຳລະສິນເຊື່ອຕ່າງໆ\n"
                                  "2. ກົດເຂົ້າໄປທີ່ໂລໂກ້ຂອງດີຈີບີ\n"
                                  "3. ພິມເລກທີສັນຍາ 14 ໂຕເລກໃນປ່ອງຂໍ້ມູນ (ປ້ອນໄດ້ເທື່ອລະສັນຍາ)\n"
                                  "4. ກວດສອບຊື່ ແລະ ນາມສະກຸນ ຖ້າຖືກຕ້ອງໃຫ້ພິມຈຳນວນຄ່າງວດທີ່ຕ້ອງຊຳລະ ແລ້ວກົດຊຳລະ\n",
                                  style: TextStyle(
                                    fontFamily: 'NotoLao',
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'ຂັ້ນຕອນການຊຳລະເງິນ',
                                  style: TextStyle(
                                    fontFamily: 'NotoLao',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset("assets/images/Pay2.png"),
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset("assets/images/Pay3.png"),
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset("assets/images/Pay4.png"),
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset("assets/images/Pay5.png"),
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset("assets/images/Pay6.png"),
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset("assets/images/Pay7.png"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  child: ExpansionTileCard(
                    baseColor: Colors.white,
                    elevation: 2,
                    shadowColor: Colors.grey,
                    key: cardB,
                    leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: SvgPicture.asset(
                          "assets/icons/mb.svg",
                          color: Colors.blue,
                        )),
                    title: Text(
                      "ຂັ້ນຕອນການຊຳລະເງິນ",
                      style: TextStyle(
                        fontFamily: 'NotoLao',
                        fontSize: 14,
                      ),
                    ),
                    // subtitle: Text("FLUTTER DEVELOPMENT COMPANY"),
                    children: <Widget>[
                      Divider(
                        thickness: 0.0,
                        height: 0.0,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/logo.png",
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                child: Text(
                                  "ຊຳລະຜ່ານແອັບພຣິເຄເຊິນຂອງບັນດາທະນາຄານ",
                                  style: TextStyle(
                                    fontFamily: 'NotoLao',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "ຊຳລະຜ່ານແອັບພຣິເຄເຊິນຜ່ານບັນດາທະນາຄານເພື່ອຄວາມສະດວກໃນການຊຳລະຄ່າງວດໃຫ້ກັບລູກຄ້າທຸກທ່ານ ທາງບໍລິສັດ ດີຈີບີ ເຊົ່າສິນເຊື່ອ ຈຳກັດ ໄດ້ເພີ່ມຊ່ອງທາງໃຫ້ລູກຄ້າເລືອກຊຳລະທັງແບບອອນລາຍ ຜ່ານແອັບພຣິເຄເຊິນຂອງບັນດາທະນາຄານໂດຍຊຳລະເຂົ້າບັນຊີຂອງດີຈີບີໂດຍກົງດັ່ງລຸ່ມນີ້\n"
                                  "ໝາຍເຫດ:\n"
                                  "ສຳລັບການໂອນຜ່ານແອັບພຣິເຄເຊິນ ລູກຄ້າຈະຕ້ອງສົ່ງຫຼັກຖານການຊຳລະພ້ອມກັບແຈ້ງຊື່ ແລະ ນາມສະກຸ່ນ, ເບີໂທ ແລະ ເລກທີສັນຍາມາທີເບີ\n 020 92 487 378",
                                  style: TextStyle(
                                    fontFamily: 'NotoLao',
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'ຂັ້ນຕອນການຊຳລະເງິນ',
                                  style: TextStyle(
                                    fontFamily: 'NotoLao',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Image.asset(
                                "assets/images/logo.png",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  child: ExpansionTileCard(
                    baseColor: Colors.white,
                    elevation: 2,
                    shadowColor: Colors.grey,
                    key: cardC,
                    leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: SvgPicture.asset(
                          "assets/icons/bank.svg",
                          color: Colors.blue,
                        )),
                    title: Text(
                      "ຊຳລະຄ່າງວດອັດຕະໂນມັດ",
                      style: TextStyle(
                        fontFamily: 'NotoLao',
                        fontSize: 14,
                      ),
                    ),
                    // subtitle: Text("FLUTTER DEVELOPMENT COMPANY"),
                    children: <Widget>[
                      Divider(
                        thickness: 0.0,
                        height: 0.0,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/logo.png",
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                child: Text(
                                  "ຫັກເງິນຈາກບັນຊີອັັດຕະໂນມັດ",
                                  style: TextStyle(
                                    fontFamily: 'NotoLao',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "ສຳລັບຊ່ອງທາງການຊຳລະຄ່າງວດ ໂດຍການຫັກເງິນຈາກບັນຊີ ອັດຕະໂນມັດເປັນອີກວິທີໜື່ງທີ່ລູກຄ້າສາມາດເລືອກໄດ້ບັນດາລູກຄ້າທີ່ນຳໃຊ້ບັນຊີຂອງທະນາຄານ ການຄ້າຕ່າງປະເທດລາວ, ທະນາຄານ ພັດທະນາລາວ ແລະ ທະນາຄານ ຮ່ວມພັດທະນາ ແມ່ນສາມາດຫັກເງິນຈາກບັນຊີແບບອັດຕະໂນມັດເພື່ອຊຳລະຄ່າງວດ ໂດຍລູກຄ້າຈະຕ້ອງຂຽນໃບຍິນຍອມໃຫ້ກັບທາງດີຈີບີ ພຽງເທົ່ານີ້ທ່ານກໍບໍ່ຕ້ອງວົນກັບການຊຳລະຄ່າງວດຊ້າເກີນກຳນົດ\n",
                                  style: TextStyle(
                                    fontFamily: 'NotoLao',
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'ຂັ້ນຕອນການຊຳລະເງິນ',
                                  style: TextStyle(
                                    fontFamily: 'NotoLao',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Image.asset(
                                "assets/images/logo.png",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  child: ExpansionTileCard(
                    baseColor: Colors.white,
                    elevation: 2,
                    shadowColor: Colors.grey,
                    key: cardD,
                    leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.asset("assets/images/logo.png")),
                    title: Text(
                      "ຊຳລະຄ່າງວດຜ່ານດີຈີບີ",
                      style: TextStyle(
                        fontFamily: 'NotoLao',
                        fontSize: 14,
                      ),
                    ),
                    // subtitle: Text("FLUTTER DEVELOPMENT COMPANY"),
                    children: <Widget>[
                      Divider(
                        thickness: 0.0,
                        height: 0.0,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/logo.png",
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                child: Text(
                                  "ໜ່ວຍບໍລິການຂອງທະນາຄານ ຫຼື ປ່ອງບໍລິການດີຈີບີ",
                                  style: TextStyle(
                                    fontFamily: 'NotoLao',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "ສຳລັບຊ່ອງທາງການຊຳລະຄ່າງວດ ແມ່ນມີຫຼາກຫຼາຍທະນາຄານທີ່ລູູກຄ້າສາມາດຊຳລະໄດ້ ມີຂັ້ນຕ້ອງດັ່ງນີ້\n"
                                  "1. ກະກຽມເລກທີສັນຍາ, ຊື່ ແລະ ນາມສະກຸນ ພ້ອມດ້ວຍເບີໂທລະສັບຂອງຜູ້ຖືສັນຍາ\n"
                                  "2. ເມື່ອເຂົ້າໄປປ່ອງບໍລິການຂອງທະນາຄານ ໃຫ້ແຈ້ງການມາຊຳລະຄ່າງວດໃຫ້ດີຈີບີກັບພະນັກງານທະນາຄານ\n"
                                  "3. ຂຽນໃບໂອນ ໂດຍລະບູເລກທີສັນຍາ, ຊື່ ແລະ ນາມສະກຸນ ພ້ອມດ້ວຍເບີໂທລະສັບຂອງຜູ້ຖືສັນຍາ ແລະ ຈຳນວນງວດ\n"
                                  "4. ແຕ່ລະທະນາຄານຈະມີການເກັບຄ່າບໍລິການ ອິງຕາມຄ່າທຳນຽມຂອງແຕ່ລະທະນາຄານ\n",
                                  style: TextStyle(
                                    fontFamily: 'NotoLao',
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'ຂັ້ນຕອນການຊຳລະເງິນ',
                                  style: TextStyle(
                                    fontFamily: 'NotoLao',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Image.asset(
                                "assets/images/logo.png",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
