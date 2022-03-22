import 'package:flutter/material.dart';
import 'package:perfect_wedding1/Login.dart';
import 'package:perfect_wedding1/Profile.dart';
import 'package:perfect_wedding1/Task_List.dart';
import 'Likes.dart';
import 'Messages.dart';
import 'Register.dart';
import 'Search.dart';
import 'Setting.dart';
import 'Wedding_planner.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> with SingleTickerProviderStateMixin {
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
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    List<Widget> bodies=[
       Stack(

        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/home.jpg'),
                fit: BoxFit.cover,
              ),
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
                    end:Alignment.center
                )
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors:[
                      Color(0xffA6523F),
                      Colors.transparent],
                    begin: Alignment.topLeft,
                    end:Alignment.centerRight
                )
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 162,
                  width: 140,
                  margin: const EdgeInsets.only(top: 150,left: 15,right: 15,bottom: 10),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Container(
                        height:135 ,
                        width: 143,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/bride-boquet.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only( topLeft:Radius.circular(12) ,topRight:Radius.circular(12) )),

                      ),

                    const Text( 'Bride Boquet',style: TextStyle(fontSize: 20,color: Color(0xffA6523F))),
                    ],
                  ),
                ),
                Container(
                  height: 162,
                  width: 140,
                  margin: const EdgeInsets.only(top: 150,left: 15,right: 15,bottom: 10),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Container(
                        height:135 ,
                        width: 143,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/jewelry.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only( topLeft:Radius.circular(12) ,topRight:Radius.circular(12) )),

                      ),

                      const Text( 'Jewelry',style: TextStyle(fontSize: 20,color:Color(0xffA6523F))),
                    ],
                  ),
                ),
                Container(
                  height: 162,
                  width: 140,
                  margin: const EdgeInsets.only(top: 150,left: 15,right: 15,bottom: 10),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Container(
                        height:135 ,
                        width: 143,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/photographer.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only( topLeft:Radius.circular(12) ,topRight:Radius.circular(12) )),

                      ),

                      const Text( 'Photographers',style: TextStyle(fontSize: 20,color:Color(0xffA6523F))),
                    ],
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 162,
                    width: 140,
                    margin: const EdgeInsets.only(top: 150,left: 15,right: 15,bottom: 10),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          height:135 ,
                          width: 143,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/wedding_planner.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only( topLeft:Radius.circular(12) ,topRight:Radius.circular(12) )),

                        ),

                        const Text( 'Wedding planner',style: TextStyle(fontSize: 20,color:Color(0xffA6523F))),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context,'/Wedding_planner');
                  },

                ),
                Container(
                  height: 162,
                  width: 140,
                  margin: const EdgeInsets.only(top: 150,left: 15,right: 15,bottom: 10),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Container(
                        height:135 ,
                        width: 143,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/cake.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only( topLeft:Radius.circular(12) ,topRight:Radius.circular(12) )),

                      ),

                      const Text( 'Cake',style: TextStyle(fontSize: 20,color:Color(0xffA6523F))),
                    ],
                  ),
                ),
                Container(
                  height: 162,
                  width: 140,
                  margin: const EdgeInsets.only(top: 150,left: 15,right: 15,bottom: 10),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Container(
                        height:135 ,
                        width: 143,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/beauty_salon.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only( topLeft:Radius.circular(12) ,topRight:Radius.circular(12) )),

                      ),

                      const Text( 'Beauty Salon',style: TextStyle(fontSize: 20,color:Color(0xffA6523F))),
                    ],
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 162,
                    width: 140,
                    margin: const EdgeInsets.only(top: 150,left: 15,right: 15,bottom: 10),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          height:135 ,
                          width: 143,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/task_list.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only( topLeft:Radius.circular(12) ,topRight:Radius.circular(12) )),

                        ),

                        const Text( 'Task List',style: TextStyle(fontSize: 20,color:Color(0xffA6523F))),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context,'/Task_List');
                  },
                ),
              ],
            ),
          )
        ],
      ),
       Likes(),
      Search(),
      //Wedding_planner(),
      // Profile(),
      //Register(),
      //Login(),
      //Messages(),
      //Task_List(),
      Setting(),

    ];
    return Scaffold(

      body: bodies.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Color(0xffE8C8C8),
        currentIndex: selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Color(0xffA6523F),
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        onTap: (index){
          setState(() {
            selectedIndex=index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: 'likes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_outlined), label: 'Setting'),
        ],
      ),

    );

  }
}

