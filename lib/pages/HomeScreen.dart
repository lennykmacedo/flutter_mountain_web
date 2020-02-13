import 'package:dashboard_flutter/utils/text_styles.dart';
import 'package:dashboard_flutter/utils/utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String size;

  @override
  Widget build(BuildContext context) {
    size = getSize(context);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: (size == 'large'
                ? AssetImage("assets/images/background_computer.jpg")
                : AssetImage("assets/images/background_mobile.jpg")),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Logo",
                    style: TextStyle(
                        fontFamily: "Merriweather",
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Home",
                        style: menuStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Text(
                          "Travels",
                          style: menuStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Text(
                          "Stories",
                          style: menuStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Text(
                          "Inspiration",
                          style: menuStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Text(
                          "Contacts",
                          style: menuStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: OutlineButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.transparent,
                          borderSide:
                              BorderSide(color: Color(0xFF333333), width: 3),
                          child: Text(
                            "Join",
                            style: menuStyle,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
