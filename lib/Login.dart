import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
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
                image: AssetImage('images/Login.jpg'),
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
                    end:Alignment.topCenter
                )
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors:[
                      Color(0x55E8C8C8),
                      Colors.transparent],
                    begin: Alignment.topRight,
                    end:Alignment.centerRight
                )
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text('Login',style: TextStyle(fontSize: 40,color:Color (0xffA6523F),),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0,right: 40,bottom: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: '  Your Email',
                    labelStyle: TextStyle(fontSize: 16,color:Color (0xffA6523F) ),
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
                padding: const EdgeInsets.only(left: 40.0,right: 40,bottom: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: '  Your Password',
                      labelStyle: TextStyle(fontSize: 16,color:Color (0xffA6523F) ),
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
                padding: EdgeInsets.only(left: 50.0,right: 40,bottom: 10),
                child: InkWell(
                  onTap: (){
                    showDialog(
                    context: context,
                    barrierDismissible: true,     // dismiss dialog when top outside
                    builder: (context) {
                    return  AlertDialog(
                    scrollable: true,           // Scrollable Effect
                    backgroundColor: Color(0xffF2EAE9),
                    contentPadding: const EdgeInsets.all(10),
                    contentTextStyle: TextStyle(color:Color(0xffA6523F),fontFamily: 'tektonpro-bold',fontSize: 20 ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Enter your email or phone number',
                              labelStyle: TextStyle(fontSize: 12,color:Color (0xffA6523F) ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:Color (0xffA6523F),
                                    width: 1.5,
                                  )
                              )
                          ),
                        ),
                      ),
                    Row(
                      children: [
                        TextButton(
                        onPressed: ()
                        {
                        },
                        child: Text('Resend')),
                        TextButton(
                            onPressed: ()
                            {
                              Navigator.of(context).pop();
                            },
                            child: Text('cancel')),
                      ],
                    ),
                    ],// here put your widget
                    );
                    },
                    );
                    },
                  child: Text('Forget Password?',textAlign: TextAlign.justify, style: TextStyle(color:Color (0xffA6523F),fontSize: 15 ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0,right: 40,bottom: 10,top: 15),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'/');

                  },
                  child: const Center(child: Text('Login',style: TextStyle(fontSize: 20),)),
                  textColor: const Color(0xffE8C8C8),
                  color:const Color (0xffA6523F) ,
                  padding: const EdgeInsets.symmetric(horizontal: 116,vertical: 14),

                )


              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12,top: 6),
                child: Center(
                  child: RichText(
                  text: TextSpan(
                  text: 'Don\'t have account ?',
                  style: const TextStyle(fontSize: 18, color: Color (0xffA6523F),fontFamily: 'tektonpro-bold' ),
                  children: <TextSpan>[
                  TextSpan(
                  text: ' Register ',
                  recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context,'/Register');

                  },
                  style: const TextStyle(
                  color: Color (0xffA6523F) ,
                    fontSize: 22
                  )
                  ),

                  ],
                  ),
                  ),
                ),
              )
                      ],

                    )



        ],
      ),
    );
  }
}
