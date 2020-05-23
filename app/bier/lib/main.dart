import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart'; // we import unilinks_plugin
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

void main() {
  print("HOLAAA");
  getBier();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
        stream: getLinksStream(),
        builder: (context, snapshot) {
          print('This will be logged');
          print('And this $context $snapshot');
          if (snapshot.hasData) {
            // our app started by configured links
            var uri = Uri.parse(snapshot.data);
            var list = uri.queryParametersAll.entries
                .toList(); // we retrieve all query parameters , tzd://genius-team.com?product_id=1

//            return Text(list.map((f) => f.toString()).join('-'));
            return Text("HOLAAA");
            // we just print all //parameters but you can now do whatever you want, for example open //product details page.
          } else {
            // our app started normally
            return HomePage();
          }
        },
      ),
    );
  }
}

void getBier() async {
  var client = http.Client();
  try {
//    var uriResponse = await client.get('http://127.0.0.1:3000/bier');
    var uriResponse = await client.get('http://www.google.com');
    print(uriResponse);
//        body: {'name': 'doodle', 'color': 'blue'});
//    print(await client.get(uriResponse.bodyFields['uri']));
  } finally {
    client.close();
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Bier(
              name: "Apa ramita",
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

class Bier extends StatelessWidget {
  final String name;
  Bier({this.name});

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
                    this.name,
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
//                  Container(
//                    height: 30,
//                    width: 90,
//                    child: RaisedButton(
//                      onPressed: _launchURL,
//                      child: Text('Go'),
//                    ),
//                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://listado.mercadolibre.com.ar/chromecast#D[A:chromecast]';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
