import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_api/flutter_native_api.dart';
import 'package:pradhangroup/main.dart';

import '../bid/bid.dart';

class details extends StatefulWidget {
  String? imag;
  details({Key? key, this.imag})
      : super(key: key);


  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  bool rent = true;
  bool buy = false;
  bool like = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 37.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Stack(
                  children: [
                    Image.asset('assets/dpic.png' , width: MediaQuery.of(context).size.width),
                    Padding(
                      padding: const EdgeInsets.only(top: 20 , left: 20 , right: 20),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(27.5),
                                      color: Colors.white
                                  ),
                                  child: Icon(Icons.arrow_back_ios_new , size: 17,),
                                ),
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap:(){
                    FlutterNativeApi.shareText("Install Pradhan Group");
                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(27.5),
                                          color: Colors.white
                                      ),
                                      child: Image.asset('assets/Upload.png' , height: 27,),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        like = !like;
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(27.5),
                                          color: (like == true)?'0095D9'.toColor():Colors.white,
                                      ),
                                      child: (like == true)?Image.asset('assets/whiteheart.png' , height: 27,):Image.asset('assets/bheart.png' , height: 27,),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),

                         /* Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(

                              width: 75,
                              height: 40,
                              decoration: BoxDecoration(
                                color: '0095D9'.toColor(),
                                borderRadius: BorderRadius.circular(20)

                              ),
                              child: Center(
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/star.png'  ,height: 15,),
                                    Text('4.9' , style:TextStyle(fontFamily: 'Lexend' , color: Colors.white),)
                                  ],
                                ),
                              )
                            ),
                          )*/
                        ],
                      ),
                    )
                  ],
                ),
              ),
              (buy == true)? Padding(
                padding: const EdgeInsets.only(left:20.0 , right:20 , top: 35 , bottom:15),
                child: Container(
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: 'EEEEEE'.toColor(),
                    borderRadius: BorderRadius.circular(15)

                  ),
                  child: Center(
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:13.0 , left:10),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/clock.png' ,height: 15,),
                              SizedBox(height: 3,),
                              Text('Auction ends in' , style :TextStyle(fontSize: 12 , fontWeight: FontWeight.w300 , fontFamily: 'Lexend'))

                            ],
                          ),
                        ),
                        Row(children: [
                          Container(
                            height: 40,
                            width: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:'262425'.toColor()
                            ),
                            child: Center(child: Text('2' , style:TextStyle(fontFamily: 'Lexend' , fontWeight: FontWeight.w400 , fontSize: 14 , color: Colors.white))),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 40,
                            width: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:'262425'.toColor()
                            ),
                            child: Center(child: Text('0' , style:TextStyle(fontFamily: 'Lexend' , fontWeight: FontWeight.w400 , fontSize: 14 , color: Colors.white))),
                          ),
                          SizedBox(width: 5,),
                          Text(':' , style:TextStyle(fontSize: 16 , fontWeight: FontWeight.w700)),
                          SizedBox(width: 5,),
                          Container(
                            height: 40,
                            width: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:'262425'.toColor()
                            ),
                            child: Center(child: Text('0' , style:TextStyle(fontFamily: 'Lexend' , fontWeight: FontWeight.w400 , fontSize: 14 , color: Colors.white))),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 40,
                            width: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:'262425'.toColor()
                            ),
                            child: Center(child: Text('8' , style:TextStyle(fontFamily: 'Lexend' , fontWeight: FontWeight.w400 , fontSize: 14 , color: Colors.white))),
                          ),
                          SizedBox(width: 5,),
                          Text(':' , style:TextStyle(fontSize: 16 , fontWeight: FontWeight.w700)),
                          SizedBox(width: 5,),
                          Container(
                            height: 40,
                            width: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:'262425'.toColor()
                            ),
                            child: Center(child: Text('2' , style:TextStyle(fontFamily: 'Lexend' , fontWeight: FontWeight.w400 , fontSize: 14 , color: Colors.white))),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 40,
                            width: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:'262425'.toColor()
                            ),
                            child: Center(child: Text('3' , style:TextStyle(fontFamily: 'Lexend' , fontWeight: FontWeight.w400 , fontSize: 14 , color: Colors.white))),
                          ),
                          SizedBox(width: 5,),
                        ],)
                      ],
                    ),
                  )
                ),
              ):SizedBox(),
              (buy == false)? Padding(
                padding: const EdgeInsets.only(left: 20.0 , right: 20 , top: 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 12.3,
                          width: 12.3,
                          decoration: BoxDecoration(
                            color: '78EB8F'.toColor(),
                            borderRadius: BorderRadius.circular(6.15)
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text('Active' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w300, fontFamily: 'Lexend'),)
                      ],
                    ),
                    Column(crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Rs. 50,000', style: TextStyle(fontSize: 20 , fontFamily: 'Lexend' , fontWeight: FontWeight.w500),),
                        Align(alignment: Alignment.topRight,
                            child: Text('per month', style: TextStyle(fontSize: 12 , fontFamily: 'Lexend' , fontWeight: FontWeight.w300),)),
                      ],
                    )
                  ],
                ),
              ):SizedBox(),
              Padding(
                padding: const EdgeInsets.only(left: 20.0 , right: 20 , top: 16),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('2011, Sultanpur, Manesar', style: TextStyle(fontSize: 20 , fontFamily: 'Lexend' , fontWeight: FontWeight.w500),),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0 , right: 20 , top: 20),
                child: Row(
                  children: [
                    Image.asset('assets/bloc.png' , height: 18,),
                    SizedBox(width: 6,),
                    Text('0.7 km away' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400 , fontFamily: 'Lexend'),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0 , right: 20 , left: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap:(){
                        setState(() {
                        rent = true ;
                        buy = false;

                      });

              },
                      child: Container(
                        height : 50,
                        width: 76,
                        decoration:BoxDecoration(
                          color: (rent == true)?'0095D9'.toColor():'F4F5FA'.toColor(),
                          borderRadius: BorderRadius.circular(20)
                        ) ,
                        child: Center(child: Text('Rent' , style: TextStyle(fontSize: 12 , fontWeight: (rent == true)?FontWeight.w700:FontWeight.w300 , fontFamily: 'Lexend' , color: (rent == true)?Colors.white:Colors.black),)),

                      ),
                    ),
                    SizedBox(width: 9.6,),
                    GestureDetector(
                      onTap:(){
                        setState(() {
                          buy = true;
                          rent = false;
                        });
                      },
                      child: Container(
                        height : 50,
                        width: 76,
                        decoration:BoxDecoration(
                            color: (buy == true)?'0095D9'.toColor():'F4F5FA'.toColor(),
                            borderRadius: BorderRadius.circular(20)
                        ) ,
                        child: Center(child: Text('Buy' , style: TextStyle(fontSize: 12 , fontWeight: (buy == true)?FontWeight.w700:FontWeight.w300 , fontFamily: 'Lexend' , color: (buy == true)?Colors.white:Colors.black),)),

                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0 , right: 20 , left: 20 ),
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor incididunt ut labore',
                style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w300 , fontFamily: 'Lexend'),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:28.0 , right: 20 , left: 20 ),
                child: Row(
                  children: [
                    Text('Transaction Type:', style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w300 , fontFamily: 'Lexend'),),
                    Text(' Resale', style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w600 , fontFamily: 'Lexend'),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:12.0 , right: 20 , left: 20 ),
                child: Row(
                  children: [
                    Text('Property Ownership:', style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w300 , fontFamily: 'Lexend'),),
                    Text(' Freehold', style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w600 , fontFamily: 'Lexend'),),
                  ],
                ),
              ),
              (buy == true)?Padding(
                padding: const EdgeInsets.only(top:12.0 , right: 20 , left: 20 ),
                child: Row(
                  children: [
                    Text('Current Bid:', style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w300 , fontFamily: 'Lexend'),),
                    Text(' 42,00,000', style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w600 , fontFamily: 'Lexend'),),
                  ],
                ),
              ):SizedBox(),
              (buy == true)?Padding(
                padding: const EdgeInsets.only(top:12.0 , right: 20 , left: 20 ),
                child: Row(
                  children: [
                    Text('Minimum Bid:', style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w300 , fontFamily: 'Lexend'),),
                    Text(' 35,00,000', style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w600 , fontFamily: 'Lexend'),),
                  ],
                ),
              ):SizedBox(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0 , right: 20 , top: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 47,
                        width: 132,
                        decoration: BoxDecoration(
                          color: 'F4F5FA'.toColor(),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/sqft.png' , height: 22,),
                            Text('1000 sq ft.', style: TextStyle(fontFamily: 'Lexend' , fontWeight: FontWeight.w400 , fontSize: 13),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 47,
                        width: 132,
                        decoration: BoxDecoration(
                            color: 'F4F5FA'.toColor(),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/government.png' , height: 22,),
                            Text('Government', style: TextStyle(fontFamily: 'Lexend' , fontWeight: FontWeight.w400 , fontSize: 13),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 47,
                        width: 132,
                        decoration: BoxDecoration(
                            color: 'F4F5FA'.toColor(),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/birthday.png' , height: 22,),
                            Text('1 year old', style: TextStyle(fontFamily: 'Lexend' , fontWeight: FontWeight.w400 , fontSize: 13),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0 , right: 20),
                child: Text('Location' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500 , fontFamily: 'Lexend'),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0 , right: 20 , top: 25),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,width: 50,
                      decoration:BoxDecoration(
                        color: 'F4F5FA'.toColor(),
                        borderRadius: BorderRadius.circular(25)
                      ) ,
                      child: Image.asset('assets/blocb.png',height: 24,),
                    ),
                    SizedBox(width:10 ,),
                    Text('2972 Westheimer Rd. Santa Ana, Illinois \n85486',
                    style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w300 , fontFamily: 'Lexend'),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0 , right: 20 , top: 30),
                child: Image.asset('assets/map.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0 , right: 20),
                child: Container(
                  width: double.maxFinite,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                    color: 'F4F5FA'.toColor()
                  ),
                  child: Center(child: Text('View on Maps' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500 , fontFamily: 'Lexend'),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0 , right: 20 , top: 25),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,width: 50,
                      decoration:BoxDecoration(
                          color: 'F4F5FA'.toColor(),
                          borderRadius: BorderRadius.circular(25)
                      ) ,
                      child: Image.asset('assets/build.png',height: 24,),
                    ),
                    SizedBox(width:10 ,),
                    Text('School , Hospital, Gaming Zone, Salon, \nGym and Spa',
                      style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w300 , fontFamily: 'Lexend'),)
                  ],
                ),
              ),
              (buy == true)?Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(thickness: 2,),
                    SizedBox(height: 20,),
                    Text('Top Bidders' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500 , fontFamily: 'Lexend'),),
                    SizedBox(height: 35,),
                    Container(
                      height: 70,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 99, 86, 0.05),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Image.asset('assets/bid1.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 18,width: 18,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(9)
                                      ),
                                      child: Center(child: Text('1' , style: TextStyle(fontSize: 10 , color: Colors.white),)),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 12,),
                              Text('Theresa Webb', style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500, fontFamily: 'Lexend'),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 17.0),
                            child: Row(
                              children: [
                                Image.asset('assets/fire.png', height: 16,),
                                Text(' 42,00,000', style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500, fontFamily: 'Lexend'),)

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 70,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 149, 217, 0.05),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Image.asset('assets/bid2.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 18,width: 18,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(9)
                                      ),
                                      child: Center(child: Text('2' , style: TextStyle(fontSize: 10 , color: Colors.white),)),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 12,),
                              Text('Darell Steward', style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500, fontFamily: 'Lexend'),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 17.0),
                            child: Row(
                              children: [
                                Image.asset('assets/fire.png', height: 16,),
                                Text(' 40,00,000', style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500, fontFamily: 'Lexend'),)

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 70,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(157, 188, 41, 0.05),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Image.asset('assets/bid3.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 18,width: 18,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(9)
                                      ),
                                      child: Center(child: Text('3' , style: TextStyle(fontSize: 10 , color: Colors.white),)),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 12,),
                              Text('Mark Jack', style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500, fontFamily: 'Lexend'),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 17.0),
                            child: Row(
                              children: [
                                Image.asset('assets/fire.png', height: 16,),
                                Text(' 39,00,000', style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500, fontFamily: 'Lexend'),)

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ):SizedBox(),


              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, right: 20 , left: 20),
                child: Divider(
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0 , right: 20 , bottom: 20),
                child: Text('Reviews' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500 , fontFamily: 'Lexend'),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0 , right: 20),
                child: Container(
                  height: 80,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 211, 1, 0.1),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 12,),
                      Image.asset('assets/bstar.png' , height: 50, width: 50,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:16.0 , left: 26),
                            child: Row(
                              children: [
                                Image.asset('assets/star.png' , height: 15,),
                                SizedBox(width: 2.5,),
                                Image.asset('assets/star.png' , height: 15,),
                                SizedBox(width: 2.5,),
                                Image.asset('assets/star.png' , height: 15,),
                                SizedBox(width: 2.5,),
                                Image.asset('assets/star.png' , height: 15,),
                                SizedBox(width: 2.5,),
                                Image.asset('assets/star.png' , height: 15,),
                              ],
                            ),
                          ),
                          SizedBox(height: 4,),
                          Padding(
                            padding: const EdgeInsets.only(left: 26.0),
                            child: Text('5.0' , style: TextStyle(fontFamily: 'Lexend' , fontWeight: FontWeight.w600 , fontSize: 24),),
                          )
                        ],
                      ),
                      Spacer(),
                      Image.asset('assets/ratepic.png' , height: 32,),
                      SizedBox(width: 10,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0 , right: 20 , top: 20),
                child: Container(
                  width: double.maxFinite,
                  height: 122,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: 'F4F5FA'.toColor()
                  ),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20.0 , top: 16),
                        child: Row(
                          children: [
                            Image.asset('assets/profile.png' , height: 45,),
                            SizedBox(width: 10,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Theresa Webb'),
                                SizedBox(height: 6,),

                                Row(
                                  children: [
                                    Image.asset('assets/star.png' , height: 10,),
                                    SizedBox(width: 2.5,),
                                    Image.asset('assets/star.png' , height: 10,),
                                    SizedBox(width: 2.5,),
                                    Image.asset('assets/star.png' , height: 10,),
                                    SizedBox(width: 2.5,),
                                    Image.asset('assets/star.png' , height: 10,),
                                    SizedBox(width: 2.5,),
                                    Image.asset('assets/gstar.png' , height: 10,),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Lorem ipsum dolor sit amet, adipiscing elit, \neiusmod tempor ut labore ',
                        style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w300 , fontFamily: 'Lexend'),),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0 , right: 20 ),
                child: Container(
                  width: double.maxFinite,
                  height: 122,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: 'F4F5FA'.toColor()
                  ),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20.0 , top: 16),
                        child: Row(
                          children: [
                            Image.asset('assets/user2.png' , height: 45,),
                            SizedBox(width: 10,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Theresa Webb'),
                                SizedBox(height: 6,),

                                Row(
                                  children: [
                                    Image.asset('assets/star.png' , height: 10,),
                                    SizedBox(width: 2.5,),
                                    Image.asset('assets/star.png' , height: 10,),
                                    SizedBox(width: 2.5,),
                                    Image.asset('assets/star.png' , height: 10,),
                                    SizedBox(width: 2.5,),
                                    Image.asset('assets/star.png' , height: 10,),
                                    SizedBox(width: 2.5,),
                                    Image.asset('assets/gstar.png' , height: 10,),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Lorem ipsum dolor sit amet, adipiscing elit, \neiusmod tempor ut labore ',
                          style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w300 , fontFamily: 'Lexend'),),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0 , right: 20 , top: 20),
                child: Container(
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: 'F4F5FA'.toColor(),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text('View All' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 15 , fontFamily: 'Lexend'),)),
                ),
              ),
              SizedBox(height: 24,),
              (buy == false)? Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20.0 , right: 20),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Nearby Properties' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 18, fontFamily: 'Lexend'),),
                        Text('View all' , style: TextStyle(fontWeight: FontWeight.w300 , fontSize: 14, fontFamily: 'Lexend',decoration: TextDecoration.underline,),)
                      ],
                    ),
                  ),
                  SizedBox(height: 22,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0 , right: 20),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(alignment: AlignmentDirectional.topEnd,
                                children: [
                                  Image.asset('assets/ex2.png' , height: 164,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 9.0 , top: 9),
                                    child: Container(
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(14),
                                          color: '0095D9'.toColor()
                                      ),
                                      child: Icon(Icons.favorite , color: Colors.white, size: 14,),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text('16, Sultanpur  ' , style: TextStyle(fontSize: 15, fontFamily: 'Lexend' , fontWeight: FontWeight.w400),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:5.0, top: 4),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/bloc.png' , height: 16,),
                                        Text('0.2 Km away')
                                      ],
                                    ),
                                    SizedBox(width: 23),
                                    Image.asset('assets/rate.png',height: 18,)
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 15,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(alignment: AlignmentDirectional.topEnd,
                                children: [
                                  Image.asset('assets/ex1.png' , height: 164,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 9.0 , top: 9),
                                    child: Container(
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(14),
                                          color: '0095D9'.toColor()
                                      ),
                                      child: Icon(Icons.favorite , color: Colors.white, size: 14,),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text('126, Manesar  ' , style: TextStyle(fontSize: 15, fontFamily: 'Lexend' , fontWeight: FontWeight.w400),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:5.0, top: 4),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/bloc.png' , height: 16,),
                                        Text('0.2 Km away')
                                      ],
                                    ),
                                    SizedBox(width: 23),
                                    Image.asset('assets/rate.png',height: 18,)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ):SizedBox(),
              (buy == true)?Padding(
                padding: const EdgeInsets.only(left:20.0 , right: 20 , top: 10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (context) => bid()),);
                  },
                  child: Container(
                    height: 60,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text('Place Bid' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 15 , fontFamily: 'Lexend' , color: Colors.white),)),
                  ),
                ),
              ):SizedBox(),



              SizedBox(height: 40,)


            ],
          ),
        ),
      ),
    );
  }
}
