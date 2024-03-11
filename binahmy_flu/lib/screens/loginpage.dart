import 'package:binahmy_flu/components/textfield.dart';
import 'package:binahmy_flu/screens/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final useridController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: SizedBox(
                      height: 70,
                      width: 80,
                      child: Image.asset("assets/images/logo-removebg-preview.png")),
                ),
                const SizedBox(width: 150,),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(context, MaterialPageRoute(builder: (context)=> WelcomePage()));
                //   },
                //   child: Image.asset("assets/images/_crop_arrow2-removebg-preview.png"),
                // ),
                Image.asset("assets/images/_crop_arrow2-removebg-preview.png")
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 60,
                ),
                Text(
                  "Login",
                  style: TextStyle(fontSize: 25, color: Colors.grey[800]),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Column(
                children: [
                  MyTextField(
                    controller: useridController,
                    hintText: "User ID",
                    obsecureText: false,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obsecureText: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
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
                             Navigator.push(context, MaterialPageRoute(builder: (context) =>  const HomePage(), ));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors
                                .transparent, // Set the button's background color to transparent
      
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white, // Text color
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(onPressed: (){}, child: const Text("Forgot user ID or Password?",style: TextStyle(fontSize: 10,color: Colors.grey),)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
