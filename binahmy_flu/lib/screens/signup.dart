import 'package:binahmy_flu/components/textfield.dart';
import 'package:binahmy_flu/screens/otpscreen.dart';
import 'package:binahmy_flu/screens/yourdetailsscreen.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
   SignUpPage({super.key});
  
  final mobilenumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 50),
               child: Container(
                height: 60,
                child: Image.asset("assets/images/logo-binhamy.png")),
             ),
            ],
          ), 
          const SizedBox(height: 40,), 
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Text("Signup now",style: TextStyle(fontSize: 28,color: Colors.grey[700]),),
              ),
            ],
          ), 
          const SizedBox(height: 5,),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Text("or find your existing application",style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: MyTextField(controller: mobilenumberController, hintText: "Your 10 digit mobile number", obsecureText: false),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 43,vertical:10),
                child: Text("You will receive an OTP on your number",style: TextStyle(fontSize: 8,color: Colors.grey),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
            child: Row(
                    children: [
                      Container(
                        width: 110,
                        height: 30,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 14, 132, 18),
                              Color.fromARGB(255, 179, 249, 181),
                            ], // Define your gradient colors
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  YourDetailsScreen(), ));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors
                                .transparent, // Set the button's background color to transparent
          
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'CONTINUE',
                            style: TextStyle(
                              color: Colors.white, // Text color
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
          const SizedBox(height: 100,), 
          const Text("By submitting your contact details,you authorise Binhami",style: TextStyle(fontSize: 13,color: Colors.grey),),
          const Text("to  contact  you  even in  your  mail  or the  number  given",style: TextStyle(fontSize: 13,color: Colors.grey),),
          const Text("above.Visit our ''How does Binhami works'' to learn about",style: TextStyle(fontSize: 13,color: Colors.grey),),
          const Row(
            children: [
              SizedBox(width: 32,),
              Text("the details we collect when sign up.",style: TextStyle(fontSize: 13,color: Colors.grey),),
            ],
          ),
        ],
      ),
    );
  }
}