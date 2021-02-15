import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'card/makeCard.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 50,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(255, 250, 182, 1),
                    Color.fromRGBO(255, 239, 78, 1),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/menu.png',
                    width: 20,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Text(
                          "Melhores coleções \nde meias online",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(97, 90, 90, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          'assets/header-socks.png',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -35),
              child: Container(
                height: 60,
                padding: EdgeInsets.only(
                  left: 20,
                  top: 8,
                ),
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[350],
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    )
                  ],
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 20,
                    ),
                    border: InputBorder.none,
                    hintText: 'Pesquisar...',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Fecha \na category',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromRGBO(97, 90, 90, 1),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: EdgeInsets.all(10),
                              onPressed: () {},
                              color: Color.fromRGBO(251, 51, 105, 0.1),
                              child: Text(
                                'Adulto',
                                style: TextStyle(
                                    color: Color.fromRGBO(251, 53, 105, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(width: 20),
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: EdgeInsets.all(10),
                              onPressed: () {},
                              color: Color.fromRGBO(97, 90, 90, 0.1),
                              child: Text(
                                'Criança',
                                style: TextStyle(
                                    color: Color.fromRGBO(97, 90, 90, 0.6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )
                    ], // <Widget>[]
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  makeCard(
                    context: context,
                    startColor: Color.fromRGBO(251, 121, 155, 1),
                    endColor: Color.fromRGBO(251, 53, 105, 1),
                    image: 'assets/sockes-one.png',
                  ),
                  makeCard(
                    context: context,
                    startColor: Color.fromRGBO(203, 251, 255, 1),
                    endColor: Color.fromRGBO(81, 223, 234, 1),
                    image: 'assets/sockes-two.png',
                  ),
                ],
              ),
            )
          ], // <Widget>[]
        ),
      ),
    );
  }
}


