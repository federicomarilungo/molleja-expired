import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart'; // we import unilinks_plugin
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model/BierModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

void getBiers() async {
  print("Se consulta getBier");
  var client = http.Client();
  try {
    var response = await client.get('http://192.168.43.45:3000/bier');
    String jsonString = response.body;
    var tagsJson = jsonDecode(jsonString);
    List<String> bierList = tagsJson != null ? List.from(tagsJson) : null;
    print("EEEEEE MI LISTA DE BIRRA $bierList");
  } finally {
    client.close();
  }
}

class HomePage extends StatelessWidget {
  var biersArray = [];

  void instanceBiersArray() {
    biersArray.add(new BierModel());
    biersArray.add(new BierModel());
//    await getBiers();
    print('Todas las birras:');
  }

  @override
  Widget build(BuildContext context) {
    instanceBiersArray();
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            BierWidget(
              bierModel: biersArray[0],
            ),
            SizedBox(
              height: 1,
            ),
            BierWidget(
              bierModel: biersArray[1],
            ),
            SizedBox(
              height: 1,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Bierlife'),
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}

class BierWidget extends StatelessWidget {
  final BierModel bierModel;
  BierWidget({this.bierModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(15),
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
                    bierModel.name,
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
                    'ALC                %${bierModel.alcohol}',
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
    );
  }
}
