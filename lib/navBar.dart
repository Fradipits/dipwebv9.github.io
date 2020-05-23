import 'package:flutter/material.dart';

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(35), bottomLeft: Radius.circular(35)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(38, 34, 106, 0.9),
              Color.fromRGBO(53, 176, 252, 0.9),
              Color.fromRGBO(53, 205, 252, 0.9),
              //Color.fromRGBO(124, 226, 250, 0.9)
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "D e e p",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => MyHomePage()));
                        },
                        child: Text(
                          "About",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      FlatButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //   MaterialPageRoute(builder: (context) => BioPage()));
                        },
                        child: Text(
                          "Bio",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Skill & Project",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(35),
              bottomLeft: Radius.circular(35)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(38, 34, 106, 0.9),
                Color.fromRGBO(53, 176, 252, 0.9),
                Color.fromRGBO(53, 205, 252, 0.9),
                //Color.fromRGBO(124, 226, 250, 0.9)
              ]),
        ),
        child: Column(
          children: [
            Text(
              "D e e p",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      // Navigator.push(
                      //    context,
                      //    MaterialPageRoute(
                      //       builder: (context) => MyHomePage()));
                    },
                    child: Text(
                      "About",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      //   Navigator.push(context,
                      //      MaterialPageRoute(builder: (context) => BioPage()));
                    },
                    child: Text(
                      "Bio",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Skill & Project",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constrains.maxWidth > 800 && constrains.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}
