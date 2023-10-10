import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool ledOn =true;
  int sensorReading = 10;
  final dataBase = FirebaseDatabase.instance.reference();

  _MainScreenState() {
    dataBase.child('ESP').once().then((snap) {
      sensorReading = snap.value['LDR'];
      ledOn = snap.value['LED'] == 1;
    }).then((value) {
      setState(() {});
    });
  dataBase.child('ESP').onChildChanged.listen((event) {
    DataSnapshot snap = event.snapshot;
    if(snap.key == 'LDR') {
      sensorReading = snap.value;
      setState(() {});
    }

  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Smart Farm'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Control your Device',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 20,),
          TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
              foregroundColor:
                  MaterialStateProperty.all<Color>(ledOn ? Colors.red : Colors.green),
                shape:
                MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: ledOn ? Colors.red : Colors.green))
                )),
            onPressed: (){
              ledOn = !ledOn;
              setState(() {});
            },
            child: Text(
              ledOn ? "Led off" : "Led on",
              style: TextStyle(fontSize: 25),
            ),
           ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'the Sensor Reading is',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 10,
              ),
              Text(
                '$sensorReading',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
