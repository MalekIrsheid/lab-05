import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url/Sceens/car.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          children: [Text("Home page"), Icon(Icons.home)],
        ),
        actions: [
          Center(
              child: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return car();
              })));
            },
            icon: Icon(Ionicons.apps_outline),
          ))
        ],
      ),
      body: Center(
          child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://w0.peakpx.com/wallpaper/480/149/HD-wallpaper-m8-and-c63s-bmw-c63s-car-cars-m8-m8competition-mercedes-zed-performance-wheels-zedsly.jpg"),
              fit: BoxFit.fill),
        ),
      )),
    );
  }
}
