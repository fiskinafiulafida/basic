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
      title: 'Flutter Basic',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("MyApp")),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              height: 60,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(padding: EdgeInsets.all(20.0)),
                  Text(
                    "BERITA TERKINI",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Text(
                    "PERTANDINGAN HARI INI",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 211, 136, 195),
                  width: 5,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtMt0LQBditu5ReqfttSQN5IEXLi33AQ58VA&usqp=CAU",
                    fit: BoxFit.cover,
                    height: 500,
                    width: 1510,
                  ),
                  SizedBox(
                    child: Container(
                      padding: EdgeInsets.all(3),
                      height: 50,
                      width: 1370,
                      alignment: Alignment.center,
                      child: Text("Costa Mendekat ke Palmeiras",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 80,
                      width: 1500,
                      color: Color.fromARGB(255, 211, 136, 195),
                      alignment: Alignment.centerLeft,
                      child: Text("Transfer",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(15.0)),
            Container(
              margin: EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 0),
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 209, 199, 207),
                  width: 5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    "data:image/jpeg;base64,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",
                    fit: BoxFit.fill,
                    width: 350,
                    height: 300,
                  ),
                  Flexible(
                      child: Text(
                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0, right: 10, left: 10),
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Color.fromARGB(255, 209, 199, 207),
                width: 5,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Barcelona 13,2021',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(15.0)),
            Container(
              margin: EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 0),
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 209, 199, 207),
                  width: 5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWVnVlX4AzxDcDTz8Ww4GiqlAjfbcH2uK3EA&usqp=CAU",
                    fit: BoxFit.fill,
                    width: 350,
                    height: 300,
                  ),
                  Flexible(
                      child: Text(
                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0, right: 10, left: 10),
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Color.fromARGB(255, 209, 199, 207),
                width: 5,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Barcelona 13,2021',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(15.0)),
            Container(
              margin: EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 0),
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 209, 199, 207),
                  width: 5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    "data:image/jpeg;base64,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",
                    fit: BoxFit.fill,
                    width: 350,
                    height: 300,
                  ),
                  Flexible(
                      child: Text(
                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0, right: 10, left: 10),
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Color.fromARGB(255, 209, 199, 207),
                width: 5,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Barcelona 13,2021',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
