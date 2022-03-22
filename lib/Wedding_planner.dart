import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Wedding_planner extends StatefulWidget {
  const Wedding_planner({Key? key}) : super(key: key);

  @override
  State<Wedding_planner> createState() => _Wedding_plannerState();
}

class _Wedding_plannerState extends State<Wedding_planner> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  bool click=true;
  bool click2=true;
  List posts=[
    {"name" :" Ahmed Emad", "click":true,"click2":false,"image":"images/home.jpg"},
    {"name" :" Ula Wael", "click":false,"click2":"false","image":"images/Login.jpg"},
    {"name" :" Emad Ali", "click":true,"click2":"true","image":"images/Register.jpg"},
    {"name" :" Mahmod Salm", "click":false,"click2":"true","image":"images/home.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        title:
        const Text('Wedding planner',style: TextStyle(color: Color(0xffF1B7B7,),fontSize: 25 ),),
        leading: IconButton(
          onPressed: (){
            Navigator.pushNamed(context,'/');
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color(0xffF1B7B7),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context,'/New_Post');

            },
             icon: const Icon(Icons.add,size: 35,),
            color: const Color(0xffF1B7B7),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context,'/Messages');
              },
              icon: const Icon(Icons.mail,size: 35,),
              color: const Color(0xffF1B7B7),
            ),
          ),
        ],
      ),
      body:Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: const Color(0xffA6523F),
            ),
            child: null /* add child content here */,
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors:[
                      Color(0xffE8C8C8),
                      Colors.transparent
                    ],
                    begin: Alignment.bottomCenter,
                    end:Alignment.topCenter
                )
            ),
          ),

          ListView.builder(
            itemCount: posts.length,
            itemBuilder:(context,i) {
              return Container(
                height: 400,
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 10),
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 320,
                      width: double.infinity,
                      decoration:  BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('${posts[i]["image"]}'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(12), topRight: Radius.circular(12))),
                    ),
                    Row(
                      children: [
                        InkWell(
                          child: Container(
                            width: 60,
                            height: 60,
                            margin: const EdgeInsets.all(10),
                            //decoration: const BoxDecoration(color: Colors.pinkAccent,shape: BoxShape.circle),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/home.jpg'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context,'/Profile');
                          },
                        ),
                         InkWell(
                           child: Padding(
                            padding: EdgeInsets.only(right: 1.0),
                            child: Text( "${posts[i]["name"]}", style: TextStyle(
                                fontSize: 15, color: Color(0xffA6523F)),),
                        ),
                           onTap: () {
                             Navigator.pushNamed(context,'/Profile');
                           },
                         ),
                        const Spacer(),
                        IconButton(
                          padding:  EdgeInsets.only(left: 15, right: 11),
                          onPressed: () {
                            setState(() {
                              if (click) {
                                click = false;
                              }
                              else {
                                click = true;
                              }
                            });
                          },
                          icon: Icon(click
                              ? Icons.favorite_border_outlined
                              : Icons.favorite, size: 33,),
                          color: const Color(0xffA6523F),),
                        IconButton(
                          padding:  EdgeInsets.only(left: 15, right: 15),

                          color: const Color (0xffA6523F),
                          onPressed: () {
                            showDialog(
                              context: context,
                              barrierDismissible: true,
                              // dismiss dialog when top outside
                              builder: (context) {
                                return AlertDialog(
                                  scrollable: true,
                                  backgroundColor: const Color(0xffF2EAE9),
                                  contentPadding: const EdgeInsets.all(30),
                                  contentTextStyle: const TextStyle(
                                      color: Color(0xffA6523F),
                                      fontFamily: 'tektonpro-bold',
                                      fontSize: 20),
                                  title: Text('Share by'),

                                  actions: [
                                    IconButton(onPressed: () {
                                      print('ula');
                                    },
                                      icon: const Icon(Icons.facebook),),
                                    IconButton(onPressed: () {
                                      print('ula');
                                    },
                                      icon: const Icon(Icons.bluetooth),),
                                    IconButton(onPressed: () {
                                      print('ula');
                                    },
                                      icon: const Icon(Icons.wifi),),
                                    IconButton(onPressed: () {
                                      print('ula');
                                    },
                                      icon: const Icon(Icons.email),),


                                  ],


                                  // here put your widget
                                );
                              },
                            );
                          },
                          icon: const Icon(Icons.share_rounded), iconSize: 30,),
                        IconButton(
                          padding:  EdgeInsets.only( right: 15),
                          onPressed: () {
                            setState(() {
                              if (click2) {
                                click2 = false;
                              }
                              else {
                                click2 = true;
                              }
                            });
                          },
                          icon: Icon(click2 ? Icons.bookmark_outline : Icons
                              .bookmark, size: 33,),
                          color: const Color(0xffA6523F),),


                      ],
                    ),


                  ],
                ),
              );
            }
          )
        ],
      ),
    );
  }
}
