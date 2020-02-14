import 'package:dashboard_flutter/utils/mouse_hover.dart';
import 'package:dashboard_flutter/utils/text_styles.dart';
import 'package:dashboard_flutter/utils/utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  String size;
  PageController controller = PageController();
  String fundo = "assets/images/2827402.jpg";
  AnimationController animationController;
  Animation animation;
  bool celular;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1700));

    animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(animationController);

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = getSize(context);
    print(size);

    size == 'large' ? celular = false : celular = true;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF2779),
        elevation: 1,
      ),
      drawer: (celular
          ? Drawer(
              child: Column(
                children: <Widget>[
                  Text('a'),
                  Text('b'),
                ],
              ),
            )
          : null),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(fundo),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              (!celular ? buildOptions() : Container()),
              Expanded(
                child: PageView(
                  onPageChanged: (index) {
                    animationController.forward();
                  },
                  scrollDirection: Axis.vertical,
                  controller: controller,
                  children: <Widget>[page1(), page2()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  animating() {
    if (controller.hasClients) {
      controller.animateToPage(1,
          duration: Duration(milliseconds: 600), curve: Curves.easeIn);
    } else {
      print('ntem');
    }
  }

  Widget buildOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Logo",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Merriweather",
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        Row(
          children: <Widget>[
            HandCursor(
              child: Text(
                "Home",
                style: menuStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: HandCursor(
                child: Text(
                  "Travels",
                  style: menuStyle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: HandCursor(
                child: Text(
                  "Stories",
                  style: menuStyle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: HandCursor(
                child: Text(
                  "Inspiration",
                  style: menuStyle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: HandCursor(
                child: Text(
                  "Contacts",
                  style: menuStyle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: HandCursor(
                child: OutlineButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.transparent,
                  borderSide: BorderSide(color: Colors.white, width: 3),
                  child: Text(
                    "Join",
                    style: menuStyle,
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget page1() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 85, left: 30),
            child: Text(
              "Explore the \nReal Nature",
              style: title,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
            child: Text(
              "Discover more than just common landscapes. Try to\nlive inside of the wild nature. Create your own story.\nUnforgettable and nonrepeating by nobody.",
              style: secondText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Color(0xFF101632),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    animating();
                  },
                  child: Text(
                    "Start a journey",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget page2() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: FadeTransition(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Text(
                "Nocturnal\nLife at the\nMountains",
                style: title,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Text(
                "Discover more than just common landscapes. Try to\nlive inside of the wild nature. Create your own story.\nUnforgettable and nonrepeating by nobody.",
                style: secondText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Color(0xFF101632),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Start a journey",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        opacity: animation,
      ),
    );
  }
}
