import 'package:binahmy_flu/components/divider.dart';
import 'package:binahmy_flu/screens/loginpage.dart';
import 'package:binahmy_flu/screens/signup.dart';
import 'package:binahmy_flu/screens/video.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Set background color to transparent
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
            child: Row(
              children: [
                SizedBox(
                  height: 110, 
                  width: 80,
                  child: Image.asset("assets/images/logo-removebg-preview.png"))
              ],
            ),
          ),
           Column(
            children: [
              Text("Welcome to",style: TextStyle(fontSize: 28,color: Colors.grey.shade800),),
              Text("Binahmy",style: TextStyle(fontSize: 38,color: Color(0xFF4CAF50)),),
            ],
          ),
          const SizedBox(height: 25,),
                GradientDivider(height: 1, colors: const [Colors.grey,Colors.white]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
                  child: ListTile(title: const Text("Login"),onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage(), ));
                  },),
                ),
                GradientDivider(height: 1, colors: const [Colors.grey,Colors.white]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
                  child: ListTile(title: const Text("Open a new account"),onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  SignUpPage(), ));
                  },),
                ),
                GradientDivider(height: 1, colors: const [Colors.grey,Colors.white]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
                  child: ListTile(title: const Text("How does Binahmy works"),onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  const WorkingVideoPage(), ));
                  },),
                ),
                GradientDivider(height: 1, colors: const [Colors.grey,Colors.white]),
                const SizedBox(height: 150,), 
                const Text("Binahmy Ventures LLP",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 43, 130, 46)),),
                const Text("B i t b a k e r    B u i l d i n g",style: TextStyle(fontSize: 17),),
                const Text("M a n t h r a m m a l   R o a d",style: TextStyle(fontSize: 16),),
                const Text("Ramanattukara,Kozhikode-33",style: TextStyle(fontSize: 16),),
        ],
      ),
    );
  }
}
