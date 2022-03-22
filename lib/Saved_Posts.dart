import 'package:flutter/material.dart';
class Saved_Posts extends StatefulWidget {
  const Saved_Posts({Key? key}) : super(key: key);

  @override
  State<Saved_Posts> createState() => _Saved_PostsState();
}

class _Saved_PostsState extends State<Saved_Posts> with SingleTickerProviderStateMixin {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        title:
        const Text('Saved Posts',style: TextStyle(color: Color(0xffF1B7B7,),fontSize: 25 ),),
        leading: IconButton(
          onPressed: (){
            Navigator.pushNamed(context,'/');
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
            scrollDirection: Axis.vertical,
            child: Column(

              children: [
                Container(
                  height: 380,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height:300 ,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/bride-boquet.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only( topLeft:Radius.circular(12) ,topRight:Radius.circular(12) )),
                      ),
                      Row(
                        children: [
                          Container(
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
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Text('Ahmed Emad', style: TextStyle(fontSize: 18,color:Color(0xffA6523F) ),),
                          ),
                          const Spacer(),
                          IconButton(
                            padding: const EdgeInsets.only(left: 13,right: 11),
                            onPressed: () {
                              setState(() {
                                if (click){
                                  click=false;}
                                else{
                                  click=true;
                                }
                              });
                            },
                            icon:  Icon(click? Icons.favorite_border_outlined:Icons.favorite,size: 33,),
                            color: const Color(0xffA6523F),),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share_rounded,size: 30,),
                            color: const Color(0xffA6523F),),
                          IconButton(
                            padding: const EdgeInsets.only(left: 13,right: 11),
                            onPressed: () {
                              setState(() {
                                if (click2){
                                  click2=false;}
                                else{
                                  click2=true;
                                }
                              });
                            },
                            icon:  Icon(click2? Icons.bookmark_outline:Icons.bookmark,size: 33,),
                            color: const Color(0xffA6523F),),


                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
