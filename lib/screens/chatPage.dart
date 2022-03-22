import 'package:flutter/material.dart';
import '../models/chatUsersModel.dart';
import '../widgets/conversationList.dart';
class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

  class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
  ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", imageURL: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FCommons%3AQuality_images&psig=AOvVaw0HpLh-fXIKrejs1Jljm-62&ust=1647976843709000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPC3r6j21_YCFQAAAAAdAAAAABAD", time: "Now"),
  ChatUsers(name: "Glady's Murphy", messageText: "That's Great", imageURL: "images/user2.jpg", time: "Yesterday"),
  ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "images/userImage3.jpeg", time: "31 Mar"),
  ChatUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", imageURL: "images/userImage4.jpeg", time: "28 Mar"),
  ChatUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", imageURL: "images/userImage5.jpeg", time: "23 Mar"),
  ChatUsers(name: "Jacob Pena", messageText: "will update you in evening", imageURL: "images/userImage6.jpeg", time: "17 Mar"),
  ChatUsers(name: "Andrey Jones", messageText: "Can you please share the file?", imageURL: "images/userImage7.jpeg", time: "24 Feb"),
  ChatUsers(name: "John Wick", messageText: "How are you?", imageURL: "images/userImage8.jpeg", time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        title: const Text('Messages',style: TextStyle(color: Color(0xffF1B7B7),fontSize: 25),),
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
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:

              <Widget>[
                ListView.builder(
                  itemCount: chatUsers.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 5),
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    return ConversationList(
                      name: chatUsers[index].name,
                      messageText: chatUsers[index].messageText,
                      imageUrl: chatUsers[index].imageURL,
                      time: chatUsers[index].time,
                      isMessageRead: (index == 0 || index == 3)?true:false,
                    );
                  },
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}