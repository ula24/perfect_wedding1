import 'dart:math';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        title: Text('User Profile',style: TextStyle(color: Color(0xffF1B7B7),fontSize: 25),),
        leading: IconButton(
          onPressed: (){
            Navigator.pushNamed(context,'/Wedding_planner');
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xffF1B7B7),
        ),
      ),
      body: Stack(
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
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  SizedBox(height: 20),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "images/home.jpg",
                    ),
                    radius: 80,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ahmed Emad',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color(0xffF1B7B7),

                    ),
                  ),
                  SizedBox(height: 3),


                  SizedBox(height: 20),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color: Color(0xffF1B7B7),
                        size: 40,
                      ),
                      SizedBox(width: 30),
                      Icon(
                        Icons.phone,
                        color: Color(0xffF1B7B7),
                        size: 40,
                      ),

                    ],
                  ),

                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),

                  ),
                  SizedBox(height: 10),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    primary: false,
                    padding: EdgeInsets.all(5),
                    itemCount: 15,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 200 / 200,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Image.asset(
                          "assets/cm${random.nextInt(10)}.jpeg",
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}