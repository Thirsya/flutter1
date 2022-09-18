import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: const <Widget>[
            navbar(),
            Trending(),
            Berita(),
            Berita(),
          ],
        ));
  }
}

class Berita extends StatelessWidget {
  const Berita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(color: Colors.indigo)),
      child: Column(children: <Widget>[
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.indigo)),
          child: Row(
            children: <Widget>[
              Container(
                width: 170.7,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  image: const DecorationImage(
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/2.jpg'),
                  ),
                ),
              ),
              Container(
                width: 210,
                height: 100,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.centerLeft,
          child: const Text('Barcelona Feb 13, 2021'),
        ),
      ]),
    );
  }
}

class Trending extends StatelessWidget {
  const Trending({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/images/1.jpeg'),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            child: const Text(
              'Costa Mendekat Ke Palmeiras',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            color: Colors.purpleAccent,
            child: const Text(
              'Transfer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class navbar extends StatelessWidget {
  const navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Text('BERITA TERBARU'),
              Text('PERTANDINGAN HARI INI'),
            ],
          )
        ],
      ),
    );
  }
}
