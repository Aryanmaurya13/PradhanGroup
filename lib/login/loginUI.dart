import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pradhangroup/main.dart';

import '../Home.dart';

class loginui extends StatefulWidget {
  const loginui({super.key});

  @override
  State<loginui> createState() => _loginuiState();
}

class _loginuiState extends State<loginui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(

        child: Padding(
          padding: const EdgeInsets.only(left: 20.0 , right: 20),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 69,),
              Stack(children: [
                Container(height: 55,width: 55,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(27.5),
                    color: 'F4F4F4'.toColor(),
                  ),),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0 , top: 16),
                  child: Icon(Icons.arrow_back_ios_new_sharp , size: 20,),
                ),
              ],),
              SizedBox(height: 40),
              Text('Log in', style: TextStyle(fontSize: 32 , fontFamily: 'Lexend' , fontWeight: FontWeight.w600 , color: '0095D9'.toColor()),),
              SizedBox(height: 24),
              Text('Enter User ID and Password provided by admin', style: TextStyle(fontSize: 16 , fontFamily: 'Lexend' , fontWeight: FontWeight.w300),),
              SizedBox(height: 54),
              TextField(
                decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,


                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: 'Username',
                filled: true,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/email.png' , height: 10,fit: BoxFit.fitHeight,),
                ),
                fillColor: 'F4F5FA'.toColor(),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(width: 1, color: 'F4F5FA'.toColor()), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(10.0),
                ),

              ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,


                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Password',
                  filled: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/Lock.png' , height: 10,fit: BoxFit.fitHeight,),
                  ),
                  fillColor: 'F4F5FA'.toColor(),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: 'F4F5FA'.toColor()), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                ),
              ),
              SizedBox(height: 20),
              Align(alignment: Alignment.bottomRight,
                  child: Text('Forget Password ?' , style: TextStyle(fontFamily: 'Lexend' , fontSize:14 , color: '0095D9'.toColor()),)),
              Spacer(),
              GestureDetector(
                onTap: ()  {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => home()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Container(
                    width: double.maxFinite,
                    height: 65,
                    decoration: BoxDecoration(
                        color: '262425'.toColor(),
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child:Center(child: Text('Login', style: TextStyle(fontSize: 16,color: Colors.white , fontWeight: FontWeight.w500 , fontFamily: 'Lexend'),)),),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
