import 'package:binahmy_flu/components/divider.dart';
import 'package:binahmy_flu/screens/loginpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
           GradientDivider(height: 1, colors: const [Colors.grey,Colors.white]),
          SizedBox(height: 4,),
           Text("Suresh",style: TextStyle(fontSize: 26,color: Colors.grey[800]),),
           SizedBox(height: 4,),
           GradientDivider(height: 1, colors: const [Colors.grey,Colors.white]),
           SizedBox(height: 20,),
          
          //first row

           Row(
            children: [
             Padding(
  padding: const EdgeInsets.symmetric(horizontal: 50),
  child: GestureDetector(
    onTap: () {
      // Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage()));
    },
    child: Container(
      height: 80,
      width: 80,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey, Colors.white], // Adjust the gradient colors as needed
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
          ),
          child: Center(
            child: Icon(
              Icons.person,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  ),
),

              
              SizedBox(width: 37,),
               Padding(
  padding: const EdgeInsets.symmetric(horizontal: 35),
  child: GestureDetector(
    onTap: () {
      // Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage()));
    },
    child: Container(
      height: 80,
      width: 80,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey, Colors.white], // Adjust the gradient colors as needed
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
          ),
          child: Center(
            child: Icon(
              Icons.monetization_on_outlined,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  ),
),
            ],
           ),
           SizedBox(height: 7,),
           Row(
             children: [
              SizedBox(width: 70),
               Text("profile"),
               SizedBox(width: 155),
               Text("Earnings"),
             ],
           ),

          //secont row

          SizedBox(height: 15,),
           Row(
            children: [
               Padding(
  padding: const EdgeInsets.symmetric(horizontal: 50),
  child: GestureDetector(
    onTap: () {
      // Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage()));
    },
    child: Container(
      height: 80,
      width: 80,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey, Colors.white], // Adjust the gradient colors as needed
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
          ),
          child: Center(
            child: Icon(
              Icons.card_travel,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  ),
),
              SizedBox(width: 37,),
                Padding(
  padding: const EdgeInsets.symmetric(horizontal: 35),
  child: GestureDetector(
    onTap: () {
      // Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage()));
    },
    child: Container(
      height: 80,
      width: 80,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey, Colors.white], // Adjust the gradient colors as needed
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
          ),
          child: Center(
            child: Icon(
              Icons.scatter_plot,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  ),
),
            ],
           ),
            

           SizedBox(height: 7,),
           const Row(
             children: [
              SizedBox(width: 50),
               Text("Product List"),
               SizedBox(width: 125),
               Text("Bin Location"),
             ],
           ),
           SizedBox(height: 20,),
            //third row

           Row(
            children: [
                 SizedBox(width: 37,),
                Padding(
  padding: const EdgeInsets.symmetric(horizontal: 17),
  child: GestureDetector(
    onTap: () {
      // Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage()));
    },
    child: Container(
      height: 80,
      width: 80,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey, Colors.white], // Adjust the gradient colors as needed
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
          ),
          child: Center(
            child: Icon(
              Icons.book,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  ),
),
              SizedBox(width: 37,),
               Padding(
  padding: const EdgeInsets.symmetric(horizontal: 62),
  child: GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage()));
    },
    child: Container(
      height: 80,
      width: 80,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey, Colors.white], // Adjust the gradient colors as needed
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
          ),
          child: Center(
            child: Icon(
              Icons.settings,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  ),
),
            ],
           ), 
           SizedBox(height: 7,),
           Row(
             children: [
              SizedBox(width: 55),
               Text("Order Book"),
               SizedBox(width: 140),
               Text("Settings"),
             ],
           ),
           SizedBox(height: 10,), 
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 20),
            child:  Row(
                  children: [
                    Container(
                      width: 210,
                      height: 40,
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors
                              .transparent, // Set the button's background color to transparent

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'SCAN NOW',
                              style: TextStyle(
                                color: Colors.white, 
                                fontSize: 23
                              ),
                            ),
                            SizedBox(width: 18,),
                            Icon(Icons.qr_code_scanner_rounded,size: 35,)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
          ),
          const SizedBox(height: 20,), 
                const Text("Binahmy Ventures LLP",style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 43, 130, 46)),),
                const Text("B i t b a k e r    B u i l d i n g",style: TextStyle(fontSize: 12),),
                const Text("M a n t h r a m m a l   R o a d",style: TextStyle(fontSize: 11),),
                const Text("Ramanattukara,Kozhikode-33",style: TextStyle(fontSize: 11),),
        ],
      ),
    );
  }
}