import 'package:flutter/material.dart';
class New_Post extends StatefulWidget {
  const New_Post({Key? key}) : super(key: key);

  @override
  State<New_Post> createState() => _New_PostState();
}

class _New_PostState extends State<New_Post> with SingleTickerProviderStateMixin {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        title: const Text('New Post',style: TextStyle(color: Color(0xffF1B7B7),fontSize: 25),),
        leading: IconButton(
          onPressed: (){
            Navigator.pushNamed(context,'/Wedding_planner');
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color(0xffF1B7B7),
        ),
      ),
      body:Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffA6523F),
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

          Container(
            margin: const EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 10),
            decoration: BoxDecoration(color: const Color(0xffF2EAE9),borderRadius: BorderRadius.circular(12)),
            child: Column(
              children:  [
                IconButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'');
                  },
                  icon: const Icon(Icons.add_photo_alternate),
                  color: const Color(0xffA6523F),
                  iconSize: 150,
                ),
                Expanded(child: SizedBox()),

                Center(
                  child:  Padding(
                    padding: const EdgeInsets.all(20),
                    child: RaisedButton(
                      onPressed: (){},
                      child: const Center(child: Text('Post',style: TextStyle(fontSize: 20),)),
                      textColor: const Color(0xffE8C8C8),
                      color:const Color (0xffA6523F) ,
                      padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 14),

                    ),
                  )
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}
