import 'package:binahmy_flu/components/textfield.dart';
import 'package:binahmy_flu/screens/registrationpage.dart';
import 'package:binahmy_flu/screens/termsandconditions.dart';
import 'package:flutter/material.dart';

class YourDetailsScreen extends StatefulWidget {
   YourDetailsScreen({super.key});

  @override
  State<YourDetailsScreen> createState() => _YourDetailsScreenState();
}

class _YourDetailsScreenState extends State<YourDetailsScreen> {

  bool isChecked = false;

  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 27),
                child: Container(
                  width: 200, 
                  height: 100,
                  child: Image.asset("assets/images/logo-binhamy.png")),
              )
            ],
          ),
          const SizedBox(height: 40,), 
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: Text("Your Details",style: TextStyle(fontSize: 25,color: Colors.grey.shade700),),
              ),
            ],
          ), 
          const SizedBox(height: 35,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ), 
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 300,
                      child: ListTile(
                        leading: Image.asset("assets/images/google_img-removebg-preview.png"),
                        title: const Text("Continue with Google"),
                        onTap: (){},
                      ),
                    ),
                  ),
                ),
            ),
          ),
        const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 55),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ), 
                ),
                Text("or"),
                 Expanded(
                  child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ), 
                ),
            ],
            ),
          ),

          const SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: MyTextField(
              controller: nameController, 
              hintText: "  Name",
               obsecureText: true, 
               ),
          ),
          const SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 55),
               child: MyTextField(
                         controller: emailController, 
                         hintText: "  E-mail",
               obsecureText: true, 
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 50),
               child: Row(
                 children: [
                   Checkbox(
                    value: isChecked, onChanged: (bool?value){
                    setState(() {
                      isChecked = value!;
                    });
                   }
                   ),
                   Text("I Agree to the",style: TextStyle(color: Colors.grey.shade600),), 
                   TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TermsAndConditions(), ));
                   }, child: Text("Terms & Conditions",style: TextStyle(color: Colors.green),))
                 ],
               ),
             ), 

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 55,vertical: 25),
               child: Row(
                      children: [
                        Container(
                          width: 140,
                          height: 30 ,
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
                               Navigator.push(context, MaterialPageRoute(builder: (context) =>  RegistrationPage(), ));
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
                                color: Colors.white, 
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
             ),
             SizedBox(height: 20,),
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