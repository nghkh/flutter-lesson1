import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
        body: Container(
          color: const Color.fromARGB(255, 211, 207, 207),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(children: [
                      Image.network(
                          width: 50,
                          height: 50,
                          'https://cdn1.iconfinder.com/data/icons/fillio-food-kitchen-and-cooking/48/food_-_spoon_fork-512.png'),
                      Column(
                        children: const [
                          Text('1625 Main Street',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          Text('My City, Ca 99984',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              )),
                        ],
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(children: [
                      Row(
                        children: [
                          Image.network(
                              width: 50,
                              height: 50,
                              'https://cdn1.iconfinder.com/data/icons/aami-web-internet/64/aami16-34-512.png'),
                          const Text('(408) 555-1212',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Image.network(
                              width: 50,
                              height: 50,
                              'https://cdn1.iconfinder.com/data/icons/aami-web-internet/64/aami3-21-512.png'),
                          const Text('costa@example.com',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ))
                        ],
                      )
                    ]),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
