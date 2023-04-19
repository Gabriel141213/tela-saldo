import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final f = DateFormat('MM-yyyy');
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Color.fromARGB(255, 255, 252, 252),
                ),
                  height: 100,
                  width:  300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                       Text(
                        'Current balance', 
                        textDirection: ui.TextDirection.ltr,
                        ),
                       SizedBox(
                        height: 20,
                       ),
                       Text(
                        '\$200000', 
                        textDirection: ui.TextDirection.rtl,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),
                       ),
                    ],
                  ),
              ),
            
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20), 
                    bottomRight: Radius.circular(20)
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.blue,
                      Color.fromARGB(255, 214, 131, 125),
                    ]
                  )
                ),
                height: 85,
                width:  300,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                       //Text('Current balance', textDirection: TextDirection.rtl,),
                       //SizedBox(
                       // height: 20,
                      // ),

                      Text(
                          '${f.format(DateTime.now()).toString()}                                                           ',
                          //textAlign: TextAlign.left, 
                          textDirection: ui.TextDirection.ltr,
                          style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          ),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                         ],                  
                  ),
              ),
              const SizedBox(
                height: 200
              ),
            
        ],
    );
  }
}