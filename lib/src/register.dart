import 'package:flutter/material.dart';
import 'package:myflutter/main.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController tfNameController = TextEditingController();
  TextEditingController tfEmailController = TextEditingController();
  TextEditingController tfPhoneController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void BtnRegister_press() {
    String name = tfNameController.text;

    String email = tfEmailController.text;

    String phone = tfPhoneController.text;

    MyApp.mem.mName = name;

    MyApp.mem.mEmail = email;

    MyApp.mem.mPhone = phone;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: <Widget>[
        Row(
          children: [
            Expanded(child: Text('Name : '), flex: 1),
            Expanded(
                child: TextField(
                    controller: tfNameController,
                    keyboardType: TextInputType.name),
                flex: 10)
          ],
        ),
        Row(
          children: [
            Expanded(child: Text('Email : '), flex: 1),
            Expanded(
                child: TextField(
                  controller: tfEmailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                flex: 10)
          ],
        ),
        Row(
          children: [
            Expanded(child: Text('Phone : '), flex: 1),
            Expanded(
                child: TextField(
                  controller: tfPhoneController,
                  keyboardType: TextInputType.phone,
                ),
                flex: 10)
          ],
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                width: 50,
              ),
              flex: 0,
            ),
            Expanded(
              child: FilledButton(
                  onPressed: BtnRegister_press, child: Text('Register')),
              flex: 1,
            ),
            Expanded(
              child: SizedBox(
                width: 50,
              ),
              flex: 8,
            )
          ],
        )
      ],
    )));
  }
}


