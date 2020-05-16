import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var experience = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[700],
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                      "https://scontent.feoh1-1.fna.fbcdn.net/v/t1.0-9/87491161_10158087416852065_2679799047102922752_o.jpg?_nc_cat=105&_nc_sid=09cbfe&_nc_eui2=AeHDpftvzlGcigRPPqA7d-BgaoekXNP6Hbdqh6Rc0_odty3BOOSX28VD9LjLgMAGVPY&_nc_ohc=2p4Ogd5AqL0AX8IaXQV&_nc_ht=scontent.feoh1-1.fna&oh=9f52b3d5442838d68a7bcd71d1530acb&oe=5EE0F7DA"),
                ),
              ),
              Text(
                "Mario Barón".toUpperCase(),
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                ),
                child: Text(
                  "Senior Developer",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontFamily: 'SourceSansPro'),
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Años de Experiencia",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    experience.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0)
                    .copyWith(top: 16.0),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0)
                    .copyWith(top: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.call,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("+57 316 311 1384"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),*/
              _ItemCard(title: "+57 316 311 1384", iconData: Icons.call),
              /*Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0)
                    .copyWith(top: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("mario.baron@sofka.com.co"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),*/
              _ItemCard(
                  title: "mario.baron@sofka.com.co", iconData: Icons.email),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0)
                    .copyWith(top: 8.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("Años"),
                      IconButton(
                          icon: Icon(
                            Icons.add_circle,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              experience++;
                            });
                          }),
                      IconButton(
                          icon: Icon(
                            Icons.do_not_disturb_on,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              if (experience > 0) {
                                experience--;
                              }
                            });
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemCard extends StatelessWidget {
  final String title;
  final IconData iconData;

  const _ItemCard({Key key, this.title, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 8.0),
      child: Card(
        child: ListTile(
          title: Text(title),
          leading: Icon(iconData),
        ),
      ),
    );
  }
}
