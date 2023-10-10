import 'package:flutter/material.dart';

import 'farm_screen.dart';

class HomeScreen extends StatelessWidget{

  List typeplant = [
    "แปลงกะเพรา",
    "แปลงพริก",
    "แปลงฟ้าทะลายโจร"
  ];

  List imgs = [
    "กะเพรา.png",
    "พริก.png",
    "ฟ้าทะลายโจร.png"
  ];
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "เกษตรอัจฉริยะ",
                    style: TextStyle(
                      fontFamily: 'Prompt-Bold',
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap:() {},
                child: Container(
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    color: Color(0xFF45DA40),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // CircleAvatar(
                      //   radius: 80,
                      //   backgroundImage: AssetImage("images/doctor1.jpg"),
                      // ),

                      SizedBox(height: 30),
                      Text(
                        " สภาพอากาศ",
                        style: TextStyle(
                          fontFamily: 'Prompt-Light',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          //fontfamily
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FarmScreen(),
                  ));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 35,
                        backgroundImage: AssetImage("images/${imgs[index]}"),
                      ),
                      Text(
                        "${typeplant[index]}",
                        style: TextStyle(
                          fontFamily: 'Prompt-Bold',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

}