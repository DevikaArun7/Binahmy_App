import 'package:flutter/material.dart';

class WorkingVideoPage extends StatefulWidget {
  const WorkingVideoPage({super.key});

  @override
  State<WorkingVideoPage> createState() => _WorkingVideoPageState();
}

class _WorkingVideoPageState extends State<WorkingVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
                child: SizedBox(
                  height: 70, 
                  width: 80, 
                  child: Image.asset("assets/images/logo-removebg-preview.png")),
              ),
              const SizedBox(width: 70,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
                child: SizedBox(
                  height: 100, 
                  width: 80, 
                  child: Image.asset("assets/images/_crop_arrow2-removebg-preview.png")),
              ),
            ],
          ), 
          const SizedBox(height: 90,), 
          Text("How Does Binahmy Works",style: TextStyle(color: Colors.grey[600],fontSize:24 ),)
        ],
       ),
    );
  }
}