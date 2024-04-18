import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({super.key});

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

// @override
// void initState() {
//   super.initState();
//   _WeatherViewState = WeatherRepositoryImpl().getCurrent(37.53857055859512, 127.00805612669545);
// }

class _WeatherViewState extends State<WeatherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('날씨'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      'tem',
                      style: TextStyle(fontSize: 150),
                    ),
                    Icon(
                      Icons.sunny,
                      size: 110,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '강수량',
                      style: TextStyle(fontSize: 50),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '체감 온도',
                      style: TextStyle(fontSize: 50),
                    ),
                  ],
                ),
              ],
            )),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                ListTile(
                  title: Row(
                    children: [
                      Text('오늘'),
                      SizedBox(
                        width: 32,
                      ),
                      Text('최대/ 최소 기온'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('오늘'),
                      SizedBox(
                        width: 32,
                      ),
                      Text('최대/ 최소 기온'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('오늘'),
                      SizedBox(
                        width: 32,
                      ),
                      Text('최대/ 최소 기온'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('오늘'),
                      SizedBox(
                        width: 32,
                      ),
                      Text('최대/ 최소 기온'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('오늘'),
                      SizedBox(
                        width: 32,
                      ),
                      Text('최대/ 최소 기온'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('오늘'),
                      SizedBox(
                        width: 32,
                      ),
                      Text('최대/ 최소 기온'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('오늘'),
                      SizedBox(
                        width: 32,
                      ),
                      Text('최대/ 최소 기온'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
