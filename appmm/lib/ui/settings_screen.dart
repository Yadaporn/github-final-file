
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 50,left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ตั้งค่า",
            style: TextStyle(
              fontFamily: 'Prompt-Bold',
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          Divider(height: 50),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.person,
                color: Colors.blue,
                size: 35,
              ),
            ),
            title: Text("ข้อมูลส่วนตัว",
              style: TextStyle(
                fontFamily: 'Prompt-Light',
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.deepPurple,
                size: 35,
              ),
            ),
            title: Text("การแจ้งเตือน",
              style: TextStyle(
                fontFamily: 'Prompt-Light',
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.settings,
                color: Colors.green,
                size: 35,
              ),
            ),
            title: Text("ทั่วไป",
              style: TextStyle(
                fontFamily: 'Prompt-Light',
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepOrange.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.info_outline,
                color: Colors.deepOrange,
                size: 35,
              ),
            ),
            title: Text("เกี่ยวกับเรา",
              style: TextStyle(
                fontFamily: 'Prompt-Light',
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          Divider(height: 50),
          SizedBox(height: 20),
          ListTile(

              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.redAccent.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.logout,
                  color: Colors.redAccent,
                  size: 35,
                ),
              ),
              title: Text("ออกจากระบบ",
                style: TextStyle(
                  fontFamily: 'Prompt-Bold',
                  fontSize: 20,
                ),
              ),
              trailing: Icon(Icons.arrow_back_ios_new_rounded),
            ),

        ],
      ),
    );
  }
}