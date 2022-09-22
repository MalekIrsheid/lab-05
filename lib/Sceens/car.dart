import 'package:flutter/material.dart';
import 'package:url/Sceens/home.dart';
import 'package:url/models/url.dart';
import 'package:ionicons/ionicons.dart';

class car extends StatefulWidget {
  const car({super.key});

  @override
  State<car> createState() => _carState();
}

class _carState extends State<car> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("welcome to car page"),
          bottom: TabBar(
            tabs: [
              IconButton(
                  onPressed: () {}, icon: Icon(Ionicons.car_sport_sharp)),
              IconButton(
                  onPressed: () {}, icon: Icon(Ionicons.car_sport_sharp)),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.globe_outline)),
            ],
          ),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(children: [
              Padding(padding: EdgeInsets.all(10)),
              Text(
                " BMW 5 Series",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "turbocharged 3.0-liter inline-six engine with 335 horsepower ,      starts from JOD 32,589 ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Image(
                  image: NetworkImage(
                      "https://media.ed.edmunds-media.com/bmw/5-series/2021/oem/2021_bmw_5-series_sedan_530e_fq_oem_1_1600.jpg")),
              Padding(padding: EdgeInsets.all(20)),
              Image(
                  image: NetworkImage(
                      "https://mediapool.bmwgroup.com/cache/P9/202005/P90389011/P90389011-the-new-bmw-530e-xdrive-sedan-phytonic-blue-metallic-m-sport-package-05-2020-2248px.jpg")),
              Padding(padding: EdgeInsets.all(20)),
              Image(
                  image: NetworkImage(
                      "https://www.bmwusa.com/content/dam/bmwusa/common/vehicles/2022/my23/5-series/sedan/gallery/BMW-MY23-5-Series-Gallery-19.jpg.asset.1657205279015.jpg"))
            ]),
          ),
          SingleChildScrollView(
            child: Column(children: [
              Padding(padding: EdgeInsets.all(10)),
              Text(
                "Mercedes E-Class",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                " Engine Type, 3.0 L in-line 6 cylinder engine ,                            starts from JOD 39,015 ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Image(
                  image: NetworkImage(
                      "https://cdn.carbuzz.com/gallery-images/840x560/684000/400/684413.jpg")),
              Padding(padding: EdgeInsets.all(20)),
              Image(
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/1d/18/3b/1d183b275e0038a1e36a67f03a587cca.jpg")),
              Padding(padding: EdgeInsets.all(20)),
              Image(
                  image: NetworkImage(
                      "https://mercedesblog.com/wp-content/uploads/2015/12/2016-mercedes-e-class-3.jpg"))
            ]),
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Text(
                "For more information please visit these website",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              urlClass(
                myfunction: BMW_Function,
                myplatformicon: Ionicons.globe,
                myplatformsubtitle:
                    "for more information please visit our website",
                myplatformtitle: "BMW 5 series",
              ),
              urlClass(
                myfunction: Mercedes_function,
                myplatformicon: Ionicons.globe,
                myplatformsubtitle:
                    "for more information please visit our website",
                myplatformtitle: "Mercedes E-Class",
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ));
                },
                icon: Icon(Icons.home),
                label: Text("Home page"),
                style: ElevatedButton.styleFrom(primary: Colors.amber),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
