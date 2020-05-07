import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bierlife'),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey[300],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 200,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(30),
                      child: Image(
                        image: NetworkImage(
                            'https://www.stickpng.com/assets/images/580b57fbd9996e24bc43c099.png'),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Apa Montañosa',
                              style: TextStyle(
                                fontSize: 27,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'IBU     ',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'ALC                4,5%',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                height: 200,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(30),
                      child: Image(
                        image: NetworkImage(
                            'https://www.stickpng.com/assets/images/580b57fbd9996e24bc43c099.png'),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Stout girl',
                              style: TextStyle(
                                fontSize: 27,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'IBU     ',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'ALC                4,5%',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                height: 200,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(30),
                      child: Image(
                        image: NetworkImage(
                            'https://www.stickpng.com/assets/images/580b57fbd9996e24bc43c099.png'),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Apa Montañosa',
                              style: TextStyle(
                                fontSize: 27,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'IBU     ',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'ALC                4,5%',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                height: 200,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(30),
                      child: Image(
                        image: NetworkImage(
                            'https://www.stickpng.com/assets/images/580b57fbd9996e24bc43c099.png'),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Apa Montañosa',
                              style: TextStyle(
                                fontSize: 27,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'IBU     ',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'ALC                4,5%',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                height: 200,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(30),
                      child: Image(
                        image: NetworkImage(
                            'https://www.stickpng.com/assets/images/580b57fbd9996e24bc43c099.png'),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Apa Montañosa',
                              style: TextStyle(
                                fontSize: 27,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'IBU     ',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.clipartmax.com/png/middle/431-4312326_beer-hops-vector-hops-icon-png.png',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'ALC                4,5%',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
