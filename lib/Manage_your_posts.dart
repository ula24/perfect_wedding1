import 'package:flutter/material.dart';
class Edit_Profile extends StatefulWidget {
  const Edit_Profile({Key? key}) : super(key: key);

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> with SingleTickerProviderStateMixin {
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
        const Text('Edit your profile',style: TextStyle(color: Color(0xffF1B7B7,),fontSize: 25 ),),
        leading: IconButton(
          onPressed: (){
            Navigator.pushNamed(context,'/Setting');
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color(0xffF1B7B7),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context,'/Setting');
              },
              icon: const Icon(Icons.check_rounded,size: 35,),
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
                  height: 380,
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                      top: 15, left: 15, right: 15, bottom: 10),
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 300,
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
                            color:const Color (0xffA6523F),
                            onPressed: () {
                              showDialog(
                                context: context,
                                barrierDismissible: true,     // dismiss dialog when top outside
                                builder: (context) {
                                  return  AlertDialog(
                                    scrollable: true,           // Scrollable Effect
                                    backgroundColor: Color(0xffF2EAE9),
                                    contentPadding: const EdgeInsets.all(30),
                                    contentTextStyle: TextStyle(color:Color(0xffA6523F),fontFamily: 'tektonpro-bold',fontSize: 20 ),
                                    content:Text('Are you sure you want to delete this post?',) ,
                                    actions: [
                                      TextButton(
                                          onPressed: ()
                                          {

                                          },
                                          child: Text('delete')),
                                      TextButton(
                                          onPressed: ()
                                          {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('cancel')),

                                    ],// here put your widget
                                  );
                                },
                              );
                            },
                            icon:const Icon(Icons.delete),iconSize: 30,),



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
