import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Task_List extends StatefulWidget {
  const Task_List({Key? key}) : super(key: key);

  @override
  State<Task_List> createState() => _Task_ListState();
}

class _Task_ListState extends State<Task_List> with SingleTickerProviderStateMixin {
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
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          titleSpacing: 0,
          title: const Text('Task List',style: TextStyle(color: Color(0xffF1B7B7),fontSize: 25),),
        leading: IconButton(
          onPressed: (){
            Navigator.pushNamed(context,'/');
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color(0xffF1B7B7),
        ),
           actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                 onPressed: () {
                 Navigator.pushNamed(context,'/New_Task');
                },
                         icon: const Icon(Icons.add,size: 35,),
            color: const Color(0xffF1B7B7),
          ),
              ),
            ]),
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

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 340,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(color: const Color(0xffF2EAE9),borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.only(top: 4,left: 10,right: 10,bottom: 75),
                        //decoration: const BoxDecoration(color: Colors.pinkAccent,shape: BoxShape.circle),
                        decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: const Color(0xffA6523F),width: 1.5),
                        ),
                        child: const Center(child: Text('1')),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                           Container(
                             margin: const EdgeInsets.only(top: 28,right: 15),
                               child: const Text('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh',maxLines: 2,style: TextStyle(fontSize: 18,color: Color(0xffA6523F),fontFamily: 'tektonpro-bold'),)
                           ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                             children:  [
                               Padding(
                                 padding: const EdgeInsets.only(top: 25,left: 10,right: 10),
                                 child: IconButton(
                                   color:const Color (0xffA6523F),
                                   onPressed: () {
                                     Navigator.pushNamed(context,'/Edit_Task');

                                   }, icon:const Icon(Icons.edit),iconSize: 30,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 25,left: 10,right: 10),
                                 child: IconButton(
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
                                           content:Text('Are you sure you want to delete this task?',) ,
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
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 25,left: 10,right: 10),
                                 child: IconButton(
                                   color:const Color (0xffA6523F),
                                   onPressed: () {
                                     showDialog(
                                       context: context,
                                       barrierDismissible: true,     // dismiss dialog when top outside
                                       builder: (context) {
                                         return  AlertDialog(
                                           scrollable: true,
                                           insetPadding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
// Scrollable Effect
                                           backgroundColor: Color(0xffF2EAE9),
                                           contentTextStyle: TextStyle(color:Color(0xffA6523F),fontFamily: 'tektonpro-bold',fontSize: 20 ),
                                           content:Container(
                                             height: 200,
                                             width: double.infinity,
                                             child: CupertinoDatePicker(
                                               mode: CupertinoDatePickerMode.dateAndTime,
                                               initialDateTime: DateTime(1969, 1, 1, 11, 33),
                                               onDateTimeChanged: (DateTime newDateTime) {
                                                 //Do Some thing
                                               },
                                               use24hFormat: false,
                                               minuteInterval: 1,
                                             ),
                                           ),
                                           actions: [
                                             TextButton(
                                                 onPressed: ()
                                                 {
                                                   Navigator.of(context).pop();
                                                 },
                                                 child: Text('save')),
                                             TextButton(
                                                 onPressed: ()
                                                 {
                                                   Navigator.pushNamed(context,'/Task_List');
                                                 },
                                                 child: Text('cancel')),

                                           ],// here put your widget
                                         );
                                       },
                                     );
                                   },
                                   icon:const Icon(Icons.add_alert),iconSize: 30,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 25,left: 10,right: 10),
                                 child: Checkbox(
                                   checkColor: const Color(0xffA6523F),
                                   value: isChecked,
                                   onChanged: (bool? value) {
                                     setState(() {
                                       isChecked = value!;
                                     });
                                   },
                                 )


                               ),

                             ],
                            )


                          ],
                        ),
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
