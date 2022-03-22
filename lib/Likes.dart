import 'package:flutter/material.dart';
class Likes extends StatefulWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> with SingleTickerProviderStateMixin {
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
  List pepole=[
    {"name" :" Ahmed", "Date":"1/2/2022","image":"images/home.jpg"},
    {"name" :" Ula", "Date":"2/2/2022","image":"images/Login.jpg"},
    {"name" :" Emad", "Date":"3/2/2022","image":"images/Register.jpg"},
    {"name" :" Mahmood", "Date":"4/2/2022","image":"images/home.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        title: Text('Likes',style: TextStyle(color: Color(0xffF1B7B7),fontSize: 25),),
        leading: IconButton(
          onPressed: (){
          Navigator.pushNamed(context,'/');
        },
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xffF1B7B7),
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

          ListView.builder(
            itemCount: pepole.length,
            itemBuilder: (context,i){
              return Container(
                height: 80,
                width: 340,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.all(10),
                      //decoration: const BoxDecoration(color: Colors.pinkAccent,shape: BoxShape.circle),
                      decoration:  BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('${pepole[i]["image"]}'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text('your post liked by ' "${pepole[i]["name"]}" ,style: TextStyle(fontSize: 14),),
                        Text('at '"${pepole[i]["Date"]}"),
                      ],
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
