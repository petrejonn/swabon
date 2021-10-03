import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wifi_connect/flutter_wifi_connect.dart';
import 'package:wifi_iot/wifi_iot.dart';

class WifiTest extends StatefulWidget {
  WifiTest({Key key}) : super(key: key);

  @override
  _WifiTestState createState() => _WifiTestState();
}

class _WifiTestState extends State<WifiTest> {
  // check if wifi is enabled
  // turn on wifi
  // connect to wifi network
  bool _isEnabled = false;
  bool _isConnected = false;

  // String _ssid = "Wicrypt.wc";
  String _pass = "Were12Strung";
  String _ssid = "IRON_SKY";

  @override
  void initState() {
    // FlutterWifiConnect.isEnabled.then((val) {
    //   if (val == true) {
    //     _isEnabled = true;
    //   }
    // });
    super.initState();
  }

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
          Image(image: AssetImage('assets/smart_home.png')),
          Text(
            "Is Wifi Enabled: " + _isEnabled.toString(),
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
                child: _isEnabled ? Text("Disable Wifi") : Text("Enable Wifi"),
              ),
              onPressed: () {
                print(FlutterWifiConnect.isEnabled);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  textStyle: TextStyle(fontSize: 20)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64.0),
            child: ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Connect to wifi"),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  textStyle: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }

  void getHttp() async {
    try {
      Response response = await Dio().get("http://192.168.4.5");
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
