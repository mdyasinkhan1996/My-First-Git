import 'package:flutter/material.dart';
import 'package:gitone/home.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final abc = TextEditingController();


  @override
  void dispose() {
    abc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: abc,
                decoration: InputDecoration(
                    hintText: "anythings",
                    border: OutlineInputBorder()
                ),
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>HomePage(abc.text)));
                },
                child: Text("HomePage"))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
