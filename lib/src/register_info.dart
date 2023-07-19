import 'package:flutter/material.dart';

import 'package:myflutter/bundle.dart';

import 'package:myflutter/main.dart';

class RegisterInfo extends StatefulWidget {
  const RegisterInfo({super.key});

  @override
  State<RegisterInfo> createState() => _RegisterInfoState();
}

class _RegisterInfoState extends State<RegisterInfo> {
  Member result = Member();

  @override
  void initState() {
// TODO: implement initState

    result = MyApp.mem;

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      const Text('Register information'),
      Text('Name member: ${result.mName}'),
      Text('Email member: ${result.mEmail}'),
      Text('Phone member: ${result.mPhone}')
    ])));
  }
}

