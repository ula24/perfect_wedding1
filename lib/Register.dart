import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> with SingleTickerProviderStateMixin {
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
      body:Stack(

        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Register.jpg'),
                fit: BoxFit.cover,
              ),
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
                    end:Alignment(1.0,-1.7)
                )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text('Register',style: TextStyle(fontSize: 40,color:Color (0xffA6523F),),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0,right: 40,bottom: 5),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: '  Your Name',
                      hintStyle: TextStyle(fontSize: 16,color:Color (0xffA6523F) ),
                      prefixIcon: Icon(Icons.person,color:Color (0xffA6523F),size: 25,),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color:Color (0xffA6523F),
                            width: 1.5,

                          )
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0,right: 40,bottom: 5),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: '  Your Email',
                      hintStyle: TextStyle(fontSize: 16,color:Color (0xffA6523F) ),
                      prefixIcon: Icon(Icons.email,color:Color (0xffA6523F),size: 25,),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color:Color (0xffA6523F),
                            width: 1.5,

                          )
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0,right: 40,bottom: 5),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: '  Phone Number',
                      hintStyle: TextStyle(fontSize: 16,color:Color (0xffA6523F) ),
                      prefixIcon: Icon(Icons.phone,color:Color (0xffA6523F),size: 25,),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color:Color (0xffA6523F),
                            width: 1.5,

                          )
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0,right: 40,bottom: 5),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: '  Your Password',
                      hintStyle: TextStyle(fontSize: 16,color:Color (0xffA6523F) ),
                      prefixIcon: Icon(Icons.vpn_key,color:Color (0xffA6523F),size: 25,),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color:Color (0xffA6523F),
                            width: 1.5,
                          )
                      )
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 40,bottom: 5,top: 10),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.pushNamed(context,'/');

                    },
                    child: const Center(child: Text('Register',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                    textColor: const Color(0xffE8C8C8),
                    color:const Color (0xffA6523F) ,
                    padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),

                  )


              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12,top: 6),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account ?',
                      style: const TextStyle(fontSize: 18, color: Color (0xffA6523F),fontFamily: 'tektonpro-bold' ),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Login ',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context,'/Login');
                              },
                            style: const TextStyle(
                                color: Color (0xffA6523F) ,
                                fontSize: 24
                            )
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],

          ),




        ],
      ),
    );
  }
}
