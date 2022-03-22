import 'package:flutter/material.dart';

import '../models/chatMessageModel.dart';

class ChatDetailPage extends StatefulWidget{
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: const Color(0xffF1B7B7),
                  ),
                  SizedBox(width: 2,),
                  /*CircleAvatar(
                    backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fdepositphotos.com%2Fstock-photos%2Fone-person.html&psig=AOvVaw0MPU6Hv3cb2S1WfTQtj1wC&ust=1647790431038000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDs8u2_0vYCFQAAAAAdAAAAABAI"),
                    maxRadius: 20,
                  ),
                  SizedBox(width: 12,),*/
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Kriss Benwat",style: TextStyle( fontSize: 20 ,color:Color(0xffF1B7B7) ),),
                        SizedBox(height: 6,),
                        Text("Online",style: TextStyle(color: Color(0xffF2EAE9), fontSize: 15),),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      body: Stack(
        alignment: Alignment.topCenter,
        children:
        <Widget>[
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
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType  == "receiver"?Color(0xffF1B7B7):Color(0xffF2EAE9)),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Color(0xffF2EAE9),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.send,size: 18,),
                    elevation: 0,
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