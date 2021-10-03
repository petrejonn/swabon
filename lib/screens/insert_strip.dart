import 'package:flutter/material.dart';
import 'package:swabon/screens/start_test.dart';

class InsertStrip extends StatelessWidget {
  const InsertStrip({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Text(
              "Swabon",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Image(image: AssetImage('assets/add_strip.png')),
          Text(
            "Insert strip into device",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64.0),
            child: ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Continue"),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StartTest()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  textStyle: TextStyle(fontSize: 20)),
            ),
          )
        ],
      ),
    );
  }
}
