import 'package:flutter/material.dart';
class Edit_Task extends StatefulWidget {
  const Edit_Task({Key? key}) : super(key: key);

  @override
  State<Edit_Task> createState() => _Edit_TaskState();
}

class _Edit_TaskState extends State<Edit_Task> with SingleTickerProviderStateMixin {
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

        title: const Text('Edit Task',style: TextStyle(color: Color(0xffF1B7B7),fontSize: 25),),
        leading: IconButton(
          onPressed: (){
            Navigator.pushNamed(context,'/Task_List');
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

          Expanded(
            child: Container(

              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: const Color(0xffF2EAE9),borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [

                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Container(
                          margin: EdgeInsets.all(15),
                          child:TextFormField(decoration: const InputDecoration(
                              hintText: '  write your task',
                              hintStyle: TextStyle(fontSize: 16,color:Color (0xffA6523F) ),
                              border: InputBorder.none

                          ),
                          ),),


                      ],
                    ),
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
