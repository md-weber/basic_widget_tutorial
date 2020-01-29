import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Youtube"),
      ),
      body: loading
          ? Container(
              child: Center(
                  child: Text(
                "Hello World!",
                style: TextStyle(fontSize: 38.0),
              )),
            )
          : Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      loading = !loading;
                    });
                    print(loading);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "Loading Toggle",
                      style: TextStyle(fontSize: 32.0),
                    ),
                  ),
                )
              ],
            )),
    );
  }
}
