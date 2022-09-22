import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:url/Sceens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myApp(),
  ));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
