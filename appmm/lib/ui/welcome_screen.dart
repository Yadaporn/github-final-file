
import 'package:appmm/ui/home_screen.dart';
import 'package:appmm/ui/login_screen.dart';
import 'package:flutter/material.dart';

import '../widget/navbar_root.dart';

class WelcomeScreen extends StatelessWidget{
  String email;
  WelcomeScreen({Key? key, required this.email}) : super (key: key);
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children:[
            SizedBox(height: 15),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: TextButton(
            //     onPressed: (){
            //       Navigator.push(context,MaterialPageRoute(
            //         builder: (context) => NavBarRoots(),
            //       ));
            //     },
            //     child: Text(
            //       "SKIP",
            //       style: TextStyle(
            //         color: Color(0xFF45DA40),
            //         fontSize: 20,
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: 50),
            Padding(padding: EdgeInsets.all(20),
              child: Image.asset("images/Picture1.png"),
            ),
            SizedBox(height: 50),
            // Text("ยินดีต้อนรับ "+email,
              Text("ยินดีต้อนรับ ",
              style: TextStyle(
                fontFamily: 'Prompt-Light',
                color: Color(0xFF45DA40),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF45DA40),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap:() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavBarRoots(),
                          ));
                    },
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "ต่อไป",
                        style: TextStyle(
                          fontFamily: 'Prompt-Bold',
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                 Material(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      // onTap:() {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => NavBarRoots(),
                      //       ));
                      // },
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          "ออกจากระบบ",
                          style: TextStyle(
                            fontFamily: 'Prompt--Bold',
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

              ],
            )
          ],
        ),
      ),
    );
  }

}