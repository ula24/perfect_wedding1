import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class alarm extends StatefulWidget {
  const alarm({Key? key}) : super(key: key);

  @override
  State<alarm> createState() => _alarmState();
}

class _alarmState extends State<alarm> with SingleTickerProviderStateMixin {
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
  TimeOfDay selectedTime = TimeOfDay.now();
  String date = "";
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          titleSpacing: 0,
          title: const Text('alarm',style: const TextStyle(color: Color(0xffF1B7B7)),),
          leading: IconButton(
            onPressed: (){
              Navigator.pushNamed(context,'/Task_List');
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: const Color(0xffF1B7B7),
          ),
          ),
      body: Stack(
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
          Container(
            height: 200,
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
        ],
      ),
    );
  }
}
