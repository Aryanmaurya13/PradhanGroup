import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pradhangroup/FuncScreen/Notification.dart';
import 'package:pradhangroup/FuncScreen/profilesetting.dart';
import 'package:pradhangroup/Screens/Search.dart';
import 'package:pradhangroup/main.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0 , left: 20, right: 20),
        child: Column(
          children: [
            Container(

              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  GestureDetector(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.5),
                        color: 'F4F5FA'.toColor(),

                      ),
                      child: Icon(Icons.arrow_back_ios_new , size: 16,),
                    ),
                  ),
                  Text('Profile' , style: TextStyle(fontFamily: 'Lexend' , fontSize: 18 , fontWeight: FontWeight.w500),),

                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27.5),
                      color: 'F4F5FA'.toColor(),

                    ),
                    child: Icon(Icons.settings_outlined , size: 22,),
                  ),



                ],
              ),
            ),
            SizedBox(height: 30,),
            Image.asset('assets/bprofile.png' , height: 130,),
            SizedBox(height: 17),
            Text('Theresa Webb', style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w400 , fontFamily: 'Lexend'),),
            SizedBox(height: 10),
            Text('debra.holt@example.com', style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , fontFamily: 'Lexend', color: 'A3A3A3'.toColor()),),
            Padding(
              padding: const EdgeInsets.only(left: 12.0 , top: 40),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (context) => psetting()),);
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/profile/Profile.png' , height: 18,),
                        SizedBox(width: 15,),
                        Text('Profile', style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , fontFamily: 'Lexend'),),

                      ],

                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Image.asset('assets/profile/Heart.png' , height: 18,),
                      SizedBox(width: 15,),
                      Text('Favorites', style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , fontFamily: 'Lexend'),),

                    ],

                  ),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notificationj()),
                      );

                    },
                    child: Row(
                      children: [
                        Image.asset('assets/profile/Notification.png' , height: 18,),
                        SizedBox(width: 15,),
                        Text('Notifications', style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , fontFamily: 'Lexend'),),

                      ],

                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Image.asset('assets/profile/Chat.png' , height: 18,),
                      SizedBox(width: 15,),
                      Text('Help Center', style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , fontFamily: 'Lexend'),),

                    ],

                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Image.asset('assets/profile/Logout.png' , height: 18,),
                      SizedBox(width: 15,),
                      Text('Log Out', style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , fontFamily: 'Lexend'),),

                    ],

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
