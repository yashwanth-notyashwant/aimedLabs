import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    double hieght = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: hieght,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 0.2 * hieght,
              width: width * 0.9,
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              color: Colors.pink.shade100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    color: Colors.grey,
                    margin: EdgeInsets.only(left: 20, top: 20),
                  ),
                  Container(
                    height: (0.2 * hieght - 80) * 0.6,
                    margin: EdgeInsets.all(20),
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 0.2 * hieght,
                  width: width * 0.9,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  color: Colors.pink.shade100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        height: (0.2 * hieght - 80) * 0.6,
                        margin: EdgeInsets.all(20),
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 15, // Place the top element at the top of the stack
                    child: Container(
                      height: 40,
                      width: 150,
                      color: Colors.grey,
                      alignment: Alignment.center,
                    )),
              ],
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
