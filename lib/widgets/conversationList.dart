import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/chatDetailPage.dart';

class ConversationList extends StatefulWidget{
  String name;
  String messageText;
  String imageUrl;
  String time;
  bool isMessageRead;
  ConversationList({required this.name,required this.messageText,required this.imageUrl,required this.time,required this.isMessageRead});
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return ChatDetailPage();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Container(
          height: 80,
          width: 340,
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(widget.imageUrl),
                        maxRadius: 30,

                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.name, style: TextStyle(fontSize: 18,color: Color(0xffA6523F)),),
                            SizedBox(height: 6,),
                            Text(widget.messageText,style: TextStyle(fontSize: 13,color: Color(0xffA6523F), fontWeight: widget.isMessageRead?FontWeight.bold:FontWeight.normal),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.time,style: TextStyle(fontSize: 12,color: Color(0xffA6523F),fontWeight: widget.isMessageRead?FontWeight.bold:FontWeight.normal),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}