import 'package:binahmy_flu/components/textfield.dart';
import 'package:binahmy_flu/screens/yourdetailsscreen.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
   OTPScreen({super.key});

    final mobileotpController = TextEditingController();

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
          const SizedBox(height: 80,), 
           Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text("Confirm OTP",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.grey[700]),),
              ),
            ],
          ), 
          SizedBox(height: 8,),
           Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text("Sent to ",style: TextStyle(fontSize: 15,color: Colors.grey[700]),),
              ),
            ],
          ), 
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: MyTextField(controller: mobileotpController, hintText: "Mobile OTP", obsecureText: false),
          ), 
          const SizedBox(height: 8,),
          const Column(
            children: [
              Text("You already have a valid OTP to login for next 30 mins.",style: TextStyle(fontSize: 12,color: Colors.grey),),
              Row(
                children: [
                  SizedBox(width: 51,),
                  Text("Please use the same OTP.",style: TextStyle(fontSize: 12,color: Colors.grey),),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,), 
          Row(
            children: [
              SizedBox(width: 50,),
              Text("Didn't recevive OTP? Resend via",style: TextStyle(color: Colors.grey,fontSize: 10),),
              SizedBox(width: 5,),
              Text("SMS/Whatsapp",style: TextStyle(color: Color.fromARGB(255, 14, 126, 18,),fontSize: 11),)
            ],
          ), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45,vertical: 20),
            child:  Row(
                  children: [
                    Container(
                      width: 120,
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
                      
                      child:
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => YourDetailsScreen(),));
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
          const SizedBox(height: 80,), 
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