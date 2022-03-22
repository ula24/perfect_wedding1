import 'package:flutter/material.dart';
class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> with SingleTickerProviderStateMixin {
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
        title: const Text('Setting',style: TextStyle(color: Color(0xffF1B7B7),fontSize: 25),),
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
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Icon(Icons.edit,size: 30,color:Color (0xffA6523F) ,),
                              ),
                              Text('Manage your posts' ,style: TextStyle(fontSize: 18,color:Color (0xffA6523F)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context,'/Edit_Profile');
                  },
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Icon(Icons.bookmark_outlined,size: 30,color:Color (0xffA6523F) ,),
                              ),
                              Text('Saved post' ,style: TextStyle(fontSize: 18,color:Color (0xffA6523F)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context,'/Saved_Posts');
                  },
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Icon(Icons.person,size: 30,color:Color (0xffA6523F) ,),
                              ),
                              Text('Account' ,style: TextStyle(fontSize: 18,color:Color (0xffA6523F)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context,'/Saved_Posts');
                  },
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Icon(Icons.info,size: 30,color:Color (0xffA6523F) ,),
                              ),
                              Text('About' ,style: TextStyle(fontSize: 18,color:Color (0xffA6523F)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context,'/About');
                  },
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Icon(Icons.info,size: 30,color:Color (0xffA6523F) ,),
                              ),
                              Text('Login' ,style: TextStyle(fontSize: 18,color:Color (0xffA6523F)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context,'/Login');
                  },
                ),



              ],
            ),
          )
        ],
      ),
    );
  }
}
