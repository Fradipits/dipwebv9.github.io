import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

Future<void> _ackAlert(BuildContext context, _status, _graduatedYear) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(_status),
          content: Text(_graduatedYear),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Oke'))
          ],
        );
      });
}

Future<void> _certifDialog(BuildContext context, _certifNumber, _url) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Credential Number"),
          content: Container(
            child: Text(_certifNumber),
          ),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Close')),
            FlatButton(
                onPressed: () {
                  launch(_url);
                },
                child: Text('Check Certificate'))
          ],
        );
      });
}

Widget hobiAlertBox(_urlHobiImage) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Container(

        //color: Colors.yellowAccent,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(_urlHobiImage), fit: BoxFit.cover),
            shape: BoxShape.rectangle)),
  );
}

Future<void> hobiAlert(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("My Gallery"),
          content: Container(
            width: 400,
            height: 300,
            child: Scaffold(
              body: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                childAspectRatio: 400 / 300,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                children: [
                  hobiAlertBox(
                      'https://scontent.fkno3-1.fna.fbcdn.net/v/t1.0-9/67328400_2378638445752337_5054162246570082304_o.jpg?_nc_cat=100&_nc_sid=84a396&_nc_eui2=AeFMTH8Y9sJonHTysjOuO8C0CaMYbWHOcRAJoxhtYc5xEDWj9qDIr00ZFDtYQS7YzXJTAXIQVjG7mWx4CN3PWGap&_nc_ohc=kQrutulsY4wAX-Mr0H_&_nc_ht=scontent.fkno3-1.fna&oh=bffa23723408cbeecdd3c813ca7d0993&oe=5EEDAD47'),
                  hobiAlertBox(
                      'https://scontent.fkno3-1.fna.fbcdn.net/v/t1.0-9/69360945_2404000746549440_7133462227889160192_o.jpg?_nc_cat=109&_nc_sid=84a396&_nc_eui2=AeHqvhNLA9J1Y2gY9ijE8nMoOSr_9vRCd9Y5Kv_29EJ31qq6-mBZhIj78Hh1COLbeihc0i_XGdh1gpV4yEQPutgn&_nc_ohc=qW65I6yrPUcAX9jEdiR&_nc_ht=scontent.fkno3-1.fna&oh=0c3094cf3ca0b242c54efcddc010c216&oe=5EEF2523'),
                  hobiAlertBox(
                      'https://scontent.fkno3-1.fna.fbcdn.net/v/t1.0-9/p720x720/51852527_2279023275713855_3223356501628289024_o.jpg?_nc_cat=110&_nc_sid=7aed08&_nc_ohc=ouzlKNfEshsAX88pO3_&_nc_ht=scontent.fkno3-1.fna&_nc_tp=6&oh=78e7d798c06404dda30100bfa9aa40dd&oe=5EEFA7CA'),
                  hobiAlertBox(
                      'https://scontent.fkno3-1.fna.fbcdn.net/v/t1.0-9/65166413_2365934377022744_7382768926049959936_o.jpg?_nc_cat=101&_nc_sid=730e14&_nc_eui2=AeHMYDiZnVLi_s2e__Un8uJWONDzjYZaZP040PONhlpk_REeLWhsmOmwbgoQQtqQGhDgMtAT_cfpyPhEuyGbAZuQ&_nc_ohc=rhSGMr20NREAX8hrX-a&_nc_ht=scontent.fkno3-1.fna&oh=3775888aa4f161d52b01e42a7d9820cc&oe=5EEF3688'),
                  hobiAlertBox(
                      'https://scontent.fkno3-1.fna.fbcdn.net/v/t1.0-9/65695949_2365934347022747_6253734805477785600_o.jpg?_nc_cat=101&_nc_sid=730e14&_nc_eui2=AeEhtvHJVGMHGdBTMOghtADIC9wvi2Pg9QUL3C-LY-D1BVkj3qcQJnih76zfJkmM2x08iEaGMqMPu5v4PEz-jcBl&_nc_ohc=frp4jRBcA9sAX9uETBY&_nc_ht=scontent.fkno3-1.fna&oh=85c9770525baefafa4ebd728c07226fe&oe=5EEE0563'),
                  hobiAlertBox(
                      'https://scontent.fkno3-1.fna.fbcdn.net/v/t1.0-9/p720x720/52651131_2279695468979969_2173314672239837184_o.jpg?_nc_cat=103&_nc_sid=dd9801&_nc_ohc=iCs897ieLVUAX99fur2&_nc_ht=scontent.fkno3-1.fna&_nc_tp=6&oh=7c108e487e4a6faca8adae56833a975c&oe=5EEF8290'),
                  //hobiAlertBox(),
                  //hobiAlertBox(),
                  // hobiAlertBox(),
                ],
              ),
            ),
          ),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Close'))
          ],
        );
      });
}

class Landingpage extends StatelessWidget {
  List<Widget> pageChildrenDesktop(double width) {
    return <Widget>[
      Container(
        width: width,
        height: 600,
        padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Color.fromRGBO(31, 31, 31, 0.9),
                )),
            Text("I'm Fradip",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Color.fromRGBO(31, 31, 31, 0.9),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                "Computer Engineering Student at Sepuluh Nopember Institute of Technology",
                style: TextStyle(
                    fontSize: 13.0, color: Color.fromRGBO(31, 31, 31, 0.7)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                "I write a code, Create Apps, Build IoT System. I am also an Asistant Laboratory at my faculty.",
                style: TextStyle(
                    fontSize: 13.0, color: Color.fromRGBO(31, 31, 31, 0.7)),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Birth Date ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Birth Place ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Nationality ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ': Fradipta Alqaiyum ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      ': 12 Januari 1999 ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      ': Bukittinggi,West Sumatra ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      ': Indonesia ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                  ],
                )
              ],
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                launch('https://intip.in/Kzjz');
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                child: Text(
                  "Download CV",
                  style: TextStyle(color: Color.fromRGBO(38, 34, 106, 0.9)),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text("Find me at",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color.fromRGBO(31, 31, 31, 0.9),
                )),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 3.0,
                ),
                //linkedinlogo
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Color.fromRGBO(240, 253, 255, 1), //button colour
                  child: InkWell(
                    splashColor: Colors.black54, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/png/512/16/16066.png',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch('https://www.linkedin.com/in/dipoo');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                //WAlogo
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Color.fromRGBO(240, 253, 255, 1), //button colour
                  child: InkWell(
                    splashColor: Colors.black54, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/png/512/1384/1384007.png',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch(
                          'https://api.whatsapp.com/send?phone=6281268786843');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                //githublogo
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Color.fromRGBO(240, 253, 255, 1), //button colour
                  child: InkWell(
                    splashColor: Colors.black54, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/svg/2111/2111432.svg',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch('https://github.com/Fradipits');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                //emaillogo
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Color.fromRGBO(240, 253, 255, 1), //button colour
                  child: InkWell(
                    splashColor: Colors.white10, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/svg/683/683155.svg',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch('mailto:adythalqaiyum@gmail.com');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 80.0),
        child: Image.asset(
          "assets/images/model.png",
          width: width - 100,
          height: 600,
        ),
      ),
    ];
  }

  List<Widget> pageChildrenMobile(double width) {
    return <Widget>[
      Container(
        width: width,
        height: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: Image.asset(
                "assets/images/model.png",
                width: width / 1.65,
                height: 200,
              ),
            ),
            Text("Hello!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Color.fromRGBO(31, 31, 31, 0.9),
                )),
            Text("I'm Fradipta Alqaiyum",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Color.fromRGBO(31, 31, 31, 0.9),
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Computer Engineering Student at Sepuluh Nopember Institute of Technology",
                      style: TextStyle(
                          fontSize: 10.0,
                          color: Color.fromRGBO(31, 31, 31, 0.7)),
                    ),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "I write a code, Create Apps, Build IoT System, devices and stuff. I am also an Asistant Laboratory at my faculty. ",
                      style: TextStyle(
                          fontSize: 10.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                  ],
                )),
            SizedBox(
              height: 8.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 90),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Birth Date ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Birth Place ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Nationality ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ': Fradipta Alqaiyum ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        ': 12 Januari 1999 ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        ': Bukittinggi,West Sumatra ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        ': Indonesia ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                launch('https://intip.in/Kzjz');
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                child: Text(
                  "Download CV",
                  style: TextStyle(color: Color.fromRGBO(38, 34, 106, 0.9)),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Find me at",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color.fromRGBO(31, 31, 31, 0.9),
                )),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 3.0,
                ),
                //linkedin
                Material(
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Colors.white, //button colour
                  child: InkWell(
                    splashColor: Colors.black54, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/png/512/16/16066.png',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch('https://www.linkedin.com/in/dipoo');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                //WA
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Colors.white, //button colour
                  child: InkWell(
                    splashColor: Colors.black54, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/png/512/1384/1384007.png',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch(
                          'https://api.whatsapp.com/send?phone=6281268786843');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                //github
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Colors.white, //button colour
                  child: InkWell(
                    splashColor: Colors.black54, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/svg/2111/2111432.svg',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch('https://github.com/Fradipits');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                //email
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Colors.white, //button colour
                  child: InkWell(
                    splashColor: Colors.white10, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/svg/683/683155.svg',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch('mailto:adythalqaiyum@gmail.com');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            )
          ],
        ),
      ),
    ];
  }

  Widget skill() {
    return Container(
        child: Column(
      children: [
        Text(
          'Skill',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new CircularPercentIndicator(
                            radius: 100.0,
                            lineWidth: 10.0,
                            percent: 0.7,
                            header: new Text("Flutter Programming"),
                            center: new Icon(
                              Icons.phone_android,
                              size: 50.0,
                              color: Color.fromRGBO(38, 34, 106, 0.9),
                            ),
                            //backgroundColor: Colors.white,
                            progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          Text('7/10'),
                        ],
                      )),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Material(
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new CircularPercentIndicator(
                            radius: 100.0,
                            lineWidth: 10.0,
                            percent: 0.7,
                            header: new Text("HTML + CSS"),
                            center: new Icon(
                              Icons.web,
                              size: 50.0,
                              color: Color.fromRGBO(38, 34, 106, 0.9),
                            ),
                            //backgroundColor: Colors.white,
                            progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          Text('7/10'),
                        ],
                      )),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.85,
                          header: new Text("Internet of Things"),
                          center: new Icon(
                            Icons.laptop_chromebook,
                            size: 50.0,
                            color: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          //backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                        ),
                        Text('8.5/10'),
                      ],
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.85,
                          header: new Text("Embedded System"),
                          center: new Icon(
                            Icons.settings,
                            size: 50.0,
                            color: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          //backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                        ),
                        Text('8.5/10'),
                      ],
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.75,
                          header: new Text("Tableau Data Visualization"),
                          center: new Icon(
                            Icons.show_chart,
                            size: 50.0,
                            color: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          //backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                        ),
                        Text('7.5/10'),
                      ],
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.55,
                          header: new Text("Deep Learning"),
                          center: new Icon(
                            Icons.laptop_chromebook,
                            size: 50.0,
                            color: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          //backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                        ),
                        Text('5.5/10'),
                      ],
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.6,
                          header: new Text("Javascript"),
                          center: new Icon(
                            Icons.web,
                            size: 50.0,
                            color: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          //backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                        ),
                        Text('6/10'),
                      ],
                    )),
              ),
            ],
          ),
        )
      ],
    ));
  }

  Widget educationDesktop(BuildContext context, double width) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Profile and Certification Section
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 6), // changes position of shadow
                  ),
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: width / 3.5,
                  //height: 250,
                  //color: Colors.pink,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                  'Fundamental Deep Learning for Computer Vision'),
                            ),
                            FlatButton(
                                onPressed: () {
                                  _certifDialog(
                                      context,
                                      '8632f14f79b6484380212fa2f8e4bc42',
                                      'https://courses.nvidia.com/certificates/8632f14f79b6484380212fa2f8e4bc42');
                                },
                                child: Text(
                                  'Check',
                                  style: TextStyle(
                                      color: Color.fromRGBO(53, 176, 252, 0.9)),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('Study Excursion NTU Singapore 2019'),
                            ),
                            FlatButton(
                                onPressed: () {
                                  _certifDialog(
                                      context, '', 'https://intip.in/24wE');
                                },
                                child: Text('Check',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(53, 176, 252, 0.9))))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
          //Education Section
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 6), // changes position of shadow
                    ),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('SDN 07 Bukittinggi'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Graduated", "2004-2010");
                              },
                              child: Text(
                                'Status',
                                style: TextStyle(
                                    color: Color.fromRGBO(53, 176, 252, 0.9)),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('SMP 01 Bukittinggi'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Graduated", "2010-2014");
                              },
                              child: Text('Status',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('SMA 04 Bukittinggi'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Graduated", "2014-2017");
                              },
                              child: Text('Status',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Institut Teknologi Sepuluh Nopember'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Student", "2017-Now");
                              },
                              child: Text('Status',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          //Experience Section
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 6), // changes position of shadow
                    ),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Liaison Officer Electra '),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text(
                                '2017',
                                style: TextStyle(
                                    color: Color.fromRGBO(53, 176, 252, 0.9)),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Liaison Office MAGE '),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2017',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Anggota Ikatan Mahasiswa Minang Surabaya'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2017-Now',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Anggota Technopreneurship Development Centre'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2017-2018',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Staff Technopreneurship Development Centre'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2018-2019',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Staff Acara MAGE 4'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2018',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Koordinator Acara MAGE 5'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2019',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Asisten Laboratorium Komputasi Multimedia '),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2019-Now',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Wakil Koordinator Laboratorium Komputasi Multimedia'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2019-Now',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget educationMobile(BuildContext context, double width) {
    return Container(
      child: Column(
        children: [
          //Profile and Certification Section
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 6), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [
                Container(
                  width: width,
                  height: 100,
                  //color: Colors.pink,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                  'Fundamental Deep Learning for Computer Vision'),
                            ),
                            FlatButton(
                                onPressed: () {
                                  _certifDialog(
                                      context,
                                      '8632f14f79b6484380212fa2f8e4bc42',
                                      'https://courses.nvidia.com/certificates/8632f14f79b6484380212fa2f8e4bc42');
                                },
                                child: Text(
                                  'Check',
                                  style: TextStyle(
                                      color: Color.fromRGBO(53, 176, 252, 0.9)),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('Study Excursion NTU Singapore 2019'),
                            ),
                            FlatButton(
                                onPressed: () {
                                  _certifDialog(
                                      context, '', 'https://intip.in/24wE');
                                },
                                child: Text('Check',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(53, 176, 252, 0.9))))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
          //Education Section
          SizedBox(
            height: 25,
          ),
          Container(
              alignment: Alignment.center,
              width: width,
              child: Text(
                "Education",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 6), // changes position of shadow
                    ),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('SDN 07 Bukittinggi'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Graduated", "2004-2010");
                              },
                              child: Text(
                                'Status',
                                style: TextStyle(
                                    color: Color.fromRGBO(53, 176, 252, 0.9)),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('SMP 01 Bukittinggi'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Graduated", "2010-2014");
                              },
                              child: Text('Status',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('SMA 04 Bukittinggi'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Graduated", "2014-2017");
                              },
                              child: Text('Status',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Institut Teknologi Sepuluh Nopember'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Student", "2017-Now");
                              },
                              child: Text('Status',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          //Experience Section
          SizedBox(
            height: 25,
          ),
          Container(
              alignment: Alignment.center,
              width: width,
              child: Text(
                "Experience",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 6), // changes position of shadow
                    ),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Liaison Officer Electra '),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text(
                                '2017',
                                style: TextStyle(
                                    color: Color.fromRGBO(53, 176, 252, 0.9)),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Liaison Office MAGE '),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2017',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Anggota Ikatan Mahasiswa Minang Surabaya'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2017-Now',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Anggota Technopreneurship Development Centre'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2017-2018',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Staff Technopreneurship Development Centre'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2018-2019',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Staff Acara MAGE 4'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2018',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Koordinator Acara MAGE 5'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2019',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Asisten Laboratorium Komputasi Multimedia '),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2019-Now',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Wakil Koordinator Laboratorium Komputasi Multimedia'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2019-Now',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _hobiBox(BuildContext context, double _hobiBoxWidth, _hobiBoxHeight,
      _hobiTittle, _hobiLink) {
    return Material(
      child: Material(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        color: Color.fromRGBO(31, 31, 31, 1),
        child: SizedBox(
          width: _hobiBoxWidth,
          height: _hobiBoxHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  height: _hobiBoxHeight - 45,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(_hobiLink),
                    fit: BoxFit.cover,
                  ))),
              Container(
                  alignment: Alignment.center,
                  height: _hobiBoxHeight / 10,
                  child: Text(
                    _hobiTittle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
              Container(
                  color: Color.fromRGBO(240, 253, 255, 1),
                  width: _hobiBoxWidth,
                  height: 20,
                  child: FlatButton(
                    onPressed: () {
                      hobiAlert(context);
                    },
                    child: Text(
                      "Check My Gallery",
                      style: TextStyle(color: Colors.black),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _interestBox(BuildContext context, _hobiTittle, _hobiLink,
      double _interestBoxWidth, double _interestBoxHeight) {
    return Material(
      child: Material(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        color: Color.fromRGBO(31, 31, 31, 1),
        child: SizedBox(
          width: _interestBoxWidth, //300
          height: _interestBoxHeight, //230
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  height: _interestBoxHeight - 30, //200,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(_hobiLink),
                    fit: BoxFit.cover,
                  ))),
              Container(
                  alignment: Alignment.center,
                  height: _interestBoxHeight - 150, //30,
                  child: Text(
                    _hobiTittle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget hobi(BuildContext context, double _hobiWidth, double _hobiHeight) {
    return Container(
      child: Column(
        children: [
          Text(
            "Hobi",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _hobiBox(context, _hobiWidth, _hobiHeight, "Climbing Mountain",
                    'https://images.unsplash.com/photo-1502126324834-38f8e02d7160?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                SizedBox(
                  width: 20,
                ),
                _hobiBox(
                    context,
                    _hobiWidth,
                    _hobiHeight,
                    "Backpaker Traveller",
                    'https://i.guim.co.uk/img/media/6917ceb3cce76fa86509b590d1b6b06fe39392a1/0_324_6000_3600/master/6000.jpg?width=460&quality=85&auto=format&fit=max&s=b71ff028883e8e2be0018dbd6f98b3c3'),
                SizedBox(
                  width: 20,
                ),
                _hobiBox(context, _hobiWidth, _hobiHeight, "Playing Games",
                    'https://img.redbull.com/images/c_fill,g_auto,w_1500,h_1000/q_auto,f_auto/redbullcom/2018/11/05/b32a8a5c-450c-47a6-8b5a-f0131bb916fd/gamespot'),
                SizedBox(
                  width: 20,
                ),
                _hobiBox(context, _hobiWidth, _hobiHeight, "Watching a Movies",
                    'https://i2.wp.com/ventsmagazine.com/wp-content/uploads/2019/12/best-strains-high-movie-watching.jpg?fit=1921%2C1201&ssl=1'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget interest(
      BuildContext context, double _interestWidth, double _interestHeight) {
    return Container(
      child: Column(
        children: [
          Text(
            "Interest",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _interestBox(
                    context,
                    "Artificial Intelligence",
                    'https://www.verdict.co.uk/wp-content/uploads/2020/04/Artificial-Intelligence.jpg',
                    _interestWidth,
                    _interestHeight),
                SizedBox(
                  width: 20,
                ),
                _interestBox(
                    context,
                    "Robotics Development",
                    'https://builtin.com/sites/default/files/styles/medium/public/2018-10/robotics-companies-roundup.jpg',
                    _interestWidth,
                    _interestHeight),
                SizedBox(
                  width: 20,
                ),
                _interestBox(
                    context,
                    "Autonomous Car",
                    'https://cdn.openpr.com/T/5/T519430692_g.jpg',
                    _interestWidth,
                    _interestHeight),
                SizedBox(
                  width: 20,
                ),
                _interestBox(
                    context,
                    "Virtual & Augmented Reality",
                    'https://www.springwise.com/wp-content/uploads/2018/08/Virtual_Reality_Tech_Explained_Springwise-2.jpg',
                    _interestWidth,
                    _interestHeight),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: pageChildrenDesktop(constraints.biggest.width / 2)),
              Row(
                children: [
                  Container(
                    color: Color.fromRGBO(240, 253, 255, 1),
                    width: constraints.biggest.width,
                    child: Row(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            width: constraints.biggest.width / 3,
                            child: Text(
                              "Certification",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            alignment: Alignment.center,
                            width: constraints.biggest.width / 3,
                            child: Text(
                              "Education",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            alignment: Alignment.center,
                            width: constraints.biggest.width / 3,
                            child: Text(
                              "Experience",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  width: constraints.biggest.width,
                  height: 300,
                  child: educationDesktop(context, constraints.biggest.width)),
              SizedBox(
                height: 50,
              ),
              Container(
                width: constraints.biggest.width,
                height: 300,
                child: skill(),
              ),
              Container(
                width: constraints.biggest.width,
                height: 350,
                //color: Colors.red,
                child: hobi(context, 300, 250),
              ),
              Container(
                width: constraints.biggest.width,
                height: 300,
                //color: Colors.red,
                child: interest(context, 300, 180),
              ),
              Container(
                width: constraints.biggest.width,
                height: 30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Build With Flutter',
                        style: TextStyle(fontSize: 8, color: Colors.black54)),
                    Text('by Fradip',
                        style: TextStyle(fontSize: 8, color: Colors.black54)),
                  ],
                ),
              )
            ],
          );
        } else {
          //untukMobile
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: pageChildrenMobile(constraints.biggest.width),
              ),
              Container(
                  alignment: Alignment.topCenter,
                  width: constraints.biggest.width,
                  child: Text(
                    "Certification",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              Container(
                width: constraints.biggest.width,
                height: 700,
                child: educationMobile(context, constraints.biggest.width),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: constraints.biggest.width,
                height: 300,
                color: Colors.white12,
                child: skill(),
              ),
              Container(
                width: constraints.biggest.width,
                height: 350,
                //color: Colors.red,
                child: hobi(context, 250, 250),
              ),
              Container(
                width: constraints.biggest.width,
                height: 300,
                //color: Colors.red,
                child: Column(
                  children: [
                    interest(context, 250, 180),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Text(
                          'Build With Flutter',
                          style: TextStyle(color: Colors.black26, fontSize: 10),
                        ),
                        Text('by Fradip',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 10))
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
