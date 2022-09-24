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
      body: Column(
        children: const <Widget>[
          navbar(),
          Trending(),
          Expanded(child: Scroll()),
        ],
      ),
    );
  }
}

class Scroll extends StatelessWidget {
  const Scroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: const <Widget>[
                    Berita(),
                    Berita(),
                    Berita(),
                  ],
                ),
              ),
            ),
          );
        },
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
      padding: const EdgeInsets.all(3.5),
      margin: const EdgeInsets.all(15),
      height: 20.5,
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'BERITA TERBARU',
                style: TextStyle(color: Colors.black),
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
              child: const Text(
                'PERTANDINGAN HARI INI',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
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
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/images/1.jpeg'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: const Text(
              "Costa Mendekat ke Palmeiras",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            color: Colors.purpleAccent,
            child: const Text("Transfer"),
          ),
        ],
      ),
    );
  }
}

class Berita extends StatelessWidget {
  const Berita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 170.7,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  image: const DecorationImage(
                    alignment: Alignment.center,
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/2.jpg'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  width: 200,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Text(
                      "Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat",
                      textAlign: TextAlign.left),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: const Text("Barcelona Feb 13, 2021"),
          ),
        ],
      ),
    );
  }
}
