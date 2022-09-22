import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri bmw_url = Uri.parse('https://www.bmw-jordan.com/models/the5/');
final Uri mercedes_url = Uri.parse(
    'https://www.mercedes-benz-mena.com/en/passengercars/mercedes-benz-cars/models/e-class/sedan-w213-fl/explore/highlights.module.html');

Future<void> BMW_Function() async {
  if (!await launchUrl(bmw_url)) {
    throw 'Could not launch $bmw_url';
  }
}

Future<void> Mercedes_function() async {
  if (!await launchUrl(mercedes_url)) {
    throw 'Could not launch $mercedes_url';
  }
}

class urlClass extends StatelessWidget {
  urlClass(
      {required this.myfunction,
      required this.myplatformicon,
      required this.myplatformsubtitle,
      required this.myplatformtitle});
  String? myplatformtitle;
  String? myplatformsubtitle;
  IconData? myplatformicon;
  Function()? myfunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Container(
        child: ListTile(
            title: Text("$myplatformtitle"),
            subtitle: Text("$myplatformsubtitle"),
            leading: Icon(myplatformicon)),
      ),
    );
  }
}
