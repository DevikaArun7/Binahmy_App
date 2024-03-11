import 'package:binahmy_flu/screens/emailotp.dart';
import 'package:binahmy_flu/screens/registrationpage.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatefulWidget {
    TermsAndConditions({super.key,});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
   bool isChecked = false;

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
          Text("Terms & Conditions",style: TextStyle(fontSize: 25,color: Colors.grey.shade700),),
          SizedBox(height: 20,),
          Text("A terms of service agreement typically contains",style: TextStyle(color: Colors.grey.shade600),),
          Text("sections   pertaining  to   one   or  more   of   the ",style: TextStyle(color: Colors.grey.shade600),),
          Row(
            children: [
              Text("              following topic:",style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
          SizedBox(height: 10,),
          Text("Disambiguation / definition  of  key  words   and",style: TextStyle(color: Colors.grey.shade600),),
          Row(
            children: [
              Text("              phrases",style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
          Row(
            children: [
              Text("              User rights and responsibilities",style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
          Row(
            children: [
              Text("              Proper or expected usage;definition of misuse",style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
          Text("Accountability for online actions, behaviour, and",style: TextStyle(color: Colors.grey.shade600),),
          Row(
            children: [
              Text("              conduct",style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
          Text("Privacy policy outlining the use of persional data",style: TextStyle(color: Colors.grey.shade600),),
          Text("Payment    details   such    as   membership     or",style: TextStyle(color: Colors.grey.shade600),),
          Row(
            children: [
              Text("              subscription fees,ect.",style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
          Text("Opt -out policy describing procedure for account",style: TextStyle(color: Colors.grey.shade600),),
          Row(
            children: [
              Text("              termination, if available",style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
           Text("Sometimes     contains   an   Arbitation     clause",style: TextStyle(color: Colors.grey.shade600),),
          Text("detailing   the  disputs  resolution   process   and ",style: TextStyle(color: Colors.grey.shade600),),
          Row(
            children: [
              Text("              limited rights to take a claim to count",style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
          Text("Disclaimer / Limitation of Liability  clarifying  the",style: TextStyle(color: Colors.grey.shade600),),
          Text("site's legal liability for damages incurred by users ",style: TextStyle(color: Colors.grey.shade600),),
          Text("User  notification  upon  modification of terms, if",style: TextStyle(color: Colors.grey.shade600),),
          Row(
            children: [
              Text("             offered",style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
          Text("Among 102 companies marketing genetic testing",style: TextStyle(color: Colors.grey.shade600),),
          Text("to consumers in 2014 for health purposes,71 had",style: TextStyle(color: Colors.grey.shade600),),
          Row(
            children: [
              Text("             publicly available terms and conditions:[4]",style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
          SizedBox(height: 10,), 
          Text("57 of the 71 had disclaimer clauses(including 10",style: TextStyle(color: Colors.grey.shade600),),
          Text("disclaming liability for injury caused by their own",style: TextStyle(color: Colors.grey.shade600),),
          Row(
            children: [
              Text("             negligence)",style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
          Text("51  let  the  company change terms ( including 17",style: TextStyle(color: Colors.grey.shade600),),
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
                   TextButton(onPressed: (){}, child: Text("Terms & Conditions",style: TextStyle(color: Colors.green),))
                 ],
               ),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage() ));
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
        ],
      ),
    );
  }
}